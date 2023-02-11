cask "mqttx" do
  arch arm: "arm64-"

  version "1.9.1"
  sha256 arm:   "bcff9a6fffdeb73aff2d866d6ccbb45abd831853ff3ace14ffa39806500847ef",
         intel: "6a284d249f3389a4bc1143bd7fb93d909badf9fe04296141c24f9f98375fd6ee"

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
