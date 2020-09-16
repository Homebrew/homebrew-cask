cask "mqttx" do
  version "1.3.3"
  sha256 "5dd9f9ac4e3cf55daca657f6bc4bdeabb83b73ef10cc2c37a23f9975ef81ecc7"

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
