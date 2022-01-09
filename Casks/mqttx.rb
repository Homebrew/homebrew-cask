cask "mqttx" do
  arch = Hardware::CPU.intel? ? "" : "universal-"

  version "1.7.1"

  if Hardware::CPU.intel?
    sha256 "32231c6277bca3cf31335ed9f9bf6640f5c3d8cb4046f9919ef2f7c139fdc091"
  else
    sha256 "edc15c34e8ae013c8982a97ab20b3bbcce747c1f76a22a920d1312a3110ae25c"
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
