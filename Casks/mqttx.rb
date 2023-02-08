cask "mqttx" do
  arch arm: "arm64-"

  version "1.9.0"
  sha256 arm:   "9f410effc56a98bc54d09630b375b6161451b279581eea9a9fa8df6bf5e20f3b",
         intel: "ee8bb1e7be241b6bc3b9d418d2523c16e5bb929f0f253927a5404ee8966960a7"

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
