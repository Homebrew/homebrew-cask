cask "mqttx" do
  arch arm: "arm64-"

  version "1.9.6"
  sha256 arm:   "b2b7723acb100c8ac51829aea7c498486bfc78cd6c4284f5280c82947a734436",
         intel: "b08d7081e1efadec3bd7d0dc63d1cd8e2e0f06bafc9e5ec1bf210d7de555d71b"

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
