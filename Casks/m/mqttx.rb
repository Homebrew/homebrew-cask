cask "mqttx" do
  arch arm: "-arm64"

  version "1.13.0"
  sha256 arm:   "0c5c012018493194528fa2ada5c5034f2bd24538e1a1e86d58192f768451cb46",
         intel: "8381f33ab8e0f8bf2be18aac2484f4aa2d98d54f876006b93eaa0cba622caa71"

  url "https://github.com/emqx/MQTTX/releases/download/v#{version}/MQTTX-#{version}#{arch}.dmg",
      verified: "github.com/emqx/MQTTX/"
  name "MQTTX"
  desc "Cross-platform MQTT 5.0 Desktop Client"
  homepage "https://mqttx.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "MQTTX.app"

  zap trash: [
    "~/Library/Application Support/MQTTX",
    "~/Library/Logs/MQTTX",
    "~/Library/Preferences/com.electron.mqttx.plist",
    "~/Library/Saved Application State/com.electron.mqttx.savedState",
  ]
end
