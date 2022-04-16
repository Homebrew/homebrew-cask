cask "mqttx" do
  arch = Hardware::CPU.intel? ? "" : "universal-"

  version "1.7.3"

  if Hardware::CPU.intel?
    sha256 "6f3aa7231ce5da1553cd57a1ed573adafe8f19f031097dcd9d0f5a764ee9ce19"
  else
    sha256 "e5cddaaad7aca2218584d44bafbf0c82d4ab9516d424d6e9acfe72f5057c9cc8"
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
