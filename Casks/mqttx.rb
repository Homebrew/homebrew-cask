cask "mqttx" do
  version "1.4.1"
  sha256 "e4d555afbb16f4e0a7b97741fcae68be6afe5d60c183bd100a175bee5257b685"

  # github.com/emqx/MQTTX/ was verified as official when first introduced to the cask
  url "https://github.com/emqx/MQTTX/releases/download/v#{version}/MQTTX-#{version}-mac.zip"
  appcast "https://github.com/emqx/MQTTX/releases.atom"
  name "MQTTX"
  desc "Cross-platform MQTT 5.0 Client"
  homepage "https://mqttx.app/"

  app "MQTTX.app"

  zap trash: [
    "~/Library/Application Support/MQTTX",
    "~/Library/Preferences/com.electron.mqttx.plist",
    "~/Library/Saved Application State/com.electron.mqttx.savedState",
    "~/Library/Logs/MQTTX",
  ]
end
