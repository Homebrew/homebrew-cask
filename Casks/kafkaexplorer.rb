cask "kafkaexplorer" do
  version "1.1"
  sha256 :no_check

  url "https://github.com/stephaneuh/kafkaexplorer/raw/develop/releases/Kafkaexplorer_1.1.dmg"
  name "Kafka Explorer"
  desc "A free, easy, straight to the point, graphical tool to explore Kafka topics and produce messages. Fully integrated with Confluent Schema Registry for AVRO schemas and JSON schemas on the fly deserialization."
  homepage "https://github.com/stephaneuh/kafkaexplorer"

  app "Kafkaexplorer.app"
end
