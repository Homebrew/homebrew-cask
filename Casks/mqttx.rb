cask "mqttx" do
  version "1.5.1"
  sha256 "cb55ba6632dfda7514fd5fd87f17c7fb21252a3961f55368370f418dddd9e9b2"

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
