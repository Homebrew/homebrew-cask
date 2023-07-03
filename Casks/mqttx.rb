cask "mqttx" do
  arch arm: "arm64-"

  version "1.9.3"
  sha256 arm:   "a999fcb67a17b51b4e8559395a2cf9161197303577b80ca6b07d499009e63953",
         intel: "65a22c9162ab27f2c097e3efacca8b5236212c2c6e33c3973c757deedeecc8b7"

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
