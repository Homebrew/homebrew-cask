cask "kafkaexplorer" do
  version "1.1"
  sha256 :no_check

  url "https://github.com/stephaneuh/kafkaexplorer/raw/develop/releases/Kafkaexplorer_1.1.dmg"
  name "Kafka Explorer"
  desc "Graphical tool to read Kafka topics, send messages with AVRO/JSON schemas support"
  homepage "https://github.com/stephaneuh/kafkaexplorer"

  app "Kafkaexplorer.app"
end
