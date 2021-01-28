cask "mqttx" do
  version "1.5.0"
  sha256 "c8419a0530b8bd4c66893bf8e0886cb8cb0c0408b3d2dd6e22654f47554f8b35"

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
