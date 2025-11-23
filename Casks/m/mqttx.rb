cask "mqttx" do
  arch arm: "-arm64"

  version "1.12.1"
  sha256 arm:   "f83cdbae6f300d0e4d89f1bacee8717d67acefeca049759c5e6e3509819a32c0",
         intel: "ee3687d4b395968d4348c59e8682663699cbe87731544c216f301702b8f904c5"

  url "https://github.com/emqx/MQTTX/releases/download/v#{version}/MQTTX-#{version}#{arch}.dmg",
      verified: "github.com/emqx/MQTTX/"
  name "MQTTX"
  desc "Cross-platform MQTT 5.0 Desktop Client"
  homepage "https://mqttx.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "MQTTX.app"

  zap trash: [
    "~/Library/Application Support/MQTTX",
    "~/Library/Logs/MQTTX",
    "~/Library/Preferences/com.electron.mqttx.plist",
    "~/Library/Saved Application State/com.electron.mqttx.savedState",
  ]
end
