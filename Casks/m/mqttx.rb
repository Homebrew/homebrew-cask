cask "mqttx" do
  arch arm: "-arm64"

  version "1.9.9"
  sha256 arm:   "2e07dc17f5c40165b700c1f7e1f84c6ff20492b936410b78e31cfbe5860a8a7e",
         intel: "eb645848a1c4994249838e2a91b99e57923d4e0c233a4ab8568b2ea868a99442"

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
