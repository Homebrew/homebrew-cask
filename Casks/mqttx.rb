cask "mqttx" do
  version "1.4.0"
  sha256 "ee084ad9eb6b918d702cc5d68dd79c8cc1cc218437f3f37aa5769e743dabcc03"

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
