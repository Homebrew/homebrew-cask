cask "mqttx" do
  arch arm: "-arm64"

  version "1.11.0"
  sha256 arm:   "234cf0a6c81544cf782eb7f875ea26211d108d877984ff46507115cf408181c3",
         intel: "9bac70b89f816d465afcee4453ef6758f50ae690232eec89ac4aba0df3106712"

  url "https://github.com/emqx/MQTTX/releases/download/v#{version}/MQTTX-#{version}#{arch}.dmg",
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
