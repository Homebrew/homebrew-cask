cask "mqttx" do
  arch arm: "arm64-"

  version "1.9.4"
  sha256 arm:   "9f02e233af8d1899281f00303ad23030781faba69e77c116b6b10ea22d75cf4b",
         intel: "a8fb7d90aea2c1af6fdfaf5228c83f975b3ddd12e169b2e3c30c611f7c8c158e"

  url "https://github.com/emqx/MQTTX/releases/download/v#{version}/MQTTX-#{version}-#{arch}mac.zip",
      verified: "github.com/emqx/MQTTX/"
  name "MQTTX"
  desc "Cross-platform MQTT 5.0 Desktop Client"
  homepage "https://mqttx.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MQTTX.app"

  zap trash: [
    "~/Library/Application Support/MQTTX",
    "~/Library/Logs/MQTTX",
    "~/Library/Preferences/com.electron.mqttx.plist",
    "~/Library/Saved Application State/com.electron.mqttx.savedState",
  ]
end
