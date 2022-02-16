cask "mqttx" do
  arch = Hardware::CPU.intel? ? "" : "universal-"

  version "1.7.2"

  if Hardware::CPU.intel?
    sha256 "0015c530ea387e2b7af0fecd0099ce10e6c198aa8cf2525ce1e4d4073db1360f"
  else
    sha256 "4f7ae5262afa9cfa3161f20b7f18d2b027bd9ab6c08cd4bce228be29e87eb9f0"
  end

  url "https://github.com/emqx/MQTTX/releases/download/v#{version}/MQTTX-#{version}-#{arch}mac.zip",
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
