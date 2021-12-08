cask "mqttx" do
  version "1.7.0"
  sha256 "50732d42411d297b529b788c6b37469c050974b3f684a6e8310840014af26ee1"

  url "https://github.com/emqx/MQTTX/releases/download/v#{version}/MQTTX-#{version}-mac.zip",
      verified: "github.com/emqx/MQTTX/"
  name "MQTTX"
  desc "Cross-platform MQTT 5.0 Desktop Client"
  homepage "https://mqttx.app/"

  app "MQTTX.app"

  zap trash: [
    "~/Library/Application Support/MQTTX",
    "~/Library/Logs/MQTTX",
    "~/Library/Preferences/com.electron.mqttx.plist",
    "~/Library/Saved Application State/com.electron.mqttx.savedState",
  ]
end
