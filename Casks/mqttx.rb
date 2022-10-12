cask "mqttx" do
  arch arm: "arm64-"

  version "1.8.3"
  sha256 arm:   "eb4c83960f41cb68e97ddd0279cb168260b18e4b6d373f4b71a22e8ed9834145",
         intel: "9e9301e3b516238943895a39ace5e7d78e44e8e09bbd6a03238ca058db35a690"

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
