cask "mqttx" do
  version "1.4.2"
  sha256 "448cbb7caceaa4653a7388f5e3c372508381fe76767cc06c4dc5df1135327155"

  url "https://github.com/emqx/MQTTX/releases/download/v#{version}/MQTTX-#{version}-mac.zip",
      verified: "github.com/emqx/MQTTX/"
  appcast "https://github.com/emqx/MQTTX/releases.atom"
  name "MQTTX"
  desc "MQTT 5.0 Client"
  homepage "https://mqttx.app/"

  app "MQTTX.app"

  zap trash: [
    "~/Library/Application Support/MQTTX",
    "~/Library/Preferences/com.electron.mqttx.plist",
    "~/Library/Saved Application State/com.electron.mqttx.savedState",
    "~/Library/Logs/MQTTX",
  ]
end
