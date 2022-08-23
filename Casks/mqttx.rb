cask "mqttx" do
  arch arm: "arm64-"

  version "1.8.2"
  sha256 arm:   "a2da4692f4be5d845605bf3d8d08e44fc521f5bdcc0e55523f9dc4c676f718ee",
         intel: "4e1659a4a20e67f065e638cff65051334465992231f3eb49e8327bf27d5fbd5e"

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
