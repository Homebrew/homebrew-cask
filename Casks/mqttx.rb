cask "mqttx" do
  version "1.6.0"

  if Hardware::CPU.intel?
    sha256 "b0d8c92f79574491e07709360f7e6e1cc309b4a812194f76f5c5f7f61ce44950"

    url "https://github.com/emqx/MQTTX/releases/download/v#{version}/MQTTX-#{version}-mac.zip",
        verified: "github.com/emqx/MQTTX/"
  else
    sha256 "5f9877ffc3f2432960256c59eef272d5f30668d24f90816780bf48b5303013df"

    url "https://github.com/emqx/MQTTX/releases/download/v#{version}/MQTTX-#{version}-universal-mac.zip",
        verified: "github.com/emqx/MQTTX/"
  end

  name "MQTTX"
  desc "Cross-platform MQTT 5.0 Desktop Client"
  homepage "https://mqttx.app/"

  app "MQTTX.app"

  zap trash: [
    "~/Library/Application Support/MQTTX",
    "~/Library/Preferences/com.electron.mqttx.plist",
    "~/Library/Saved Application State/com.electron.mqttx.savedState",
    "~/Library/Logs/MQTTX",
  ]
end
