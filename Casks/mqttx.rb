cask "mqttx" do
  version "1.5.5"
  sha256 "48fb81be7991559ec7aca7200fd552f7338ec14ec848d63d22f7979b6121da27"

  url "https://github.com/emqx/MQTTX/releases/download/v#{version}/MQTTX-#{version}-mac.zip",
      verified: "github.com/emqx/MQTTX/"
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
