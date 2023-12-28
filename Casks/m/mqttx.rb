cask "mqttx" do
  arch arm: "-arm64"

  version "1.9.8"
  sha256 arm:   "9723dc6704ff883659eceabbd867f56a9c6aa7a6478a60292d196896fad47bdf",
         intel: "1f2af567d3f8ab52e2d24d2c51e918c95e389012edcdbdb7f6a4a6f670b4b34b"

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
