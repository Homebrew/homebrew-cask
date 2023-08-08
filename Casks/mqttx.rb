cask "mqttx" do
  arch arm: "arm64-"

  version "1.9.5"
  sha256 arm:   "5708e0bdd88ce53d005879a116f256d924063b3a3d88f5621bb28460e200a998",
         intel: "38f4c90838506b8623cce688e955ad3f94b6d60d456da5d7807cdf5f8cf26462"

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
