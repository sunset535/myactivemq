<script src="stomp.js"></script>
<script type="text/javascript">
 var client = Stomp.client( "ws://localhost:61614/stomp", "v11.stomp" );
 client.connect( "", "",
  function() {
      client.subscribe("jms.topic.test",
       function( message ) {
           alert( message );
          }, 
    { priority: 9 } 
      );
   client.send("jms.topic.test", { priority: 9 }, "Pub/Sub over STOMP!");
  }
 );
</script>