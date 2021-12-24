cask "mqttx" do
  version "1.7.0"
  sha256 "68754d3dd83ba947ce08a5a763e6a844f01b00275322eb9f88d757d99383825e"

  url "https://github.com/emqx/MQTTX/releases/download/v#{version}/MQTTX-#{version}-universal-mac.zip",
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
