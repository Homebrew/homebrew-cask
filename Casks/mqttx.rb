cask "mqttx" do
  version "1.3.4"
  sha256 "1b668a19f88cd0367ab848c130fe9a8eebf815285e85f1379235074cee68d6cc"

  # github.com/emqx/MQTTX/ was verified as official when first introduced to the cask
  url "https://github.com/emqx/MQTTX/releases/download/v#{version}/MQTTX-#{version}-mac.zip"
  appcast "https://github.com/emqx/MQTTX/releases.atom"
  name "MQTTX"
  homepage "https://mqttx.app/"

  app "MQTTX.app"

  zap trash: [
    "~/Library/Application Support/MQTTX",
    "~/Library/Preferences/com.electron.mqttx.plist",
    "~/Library/Saved Application State/com.electron.mqttx.savedState",
    "~/Library/Logs/MQTTX",
  ]
end
