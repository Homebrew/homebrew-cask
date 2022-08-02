cask "mqttx" do
  arch = Hardware::CPU.intel? ? "" : "arm64-"

  version "1.8.1"

  if Hardware::CPU.intel?
    sha256 "b7c2096b497e9595c1ab3ecad1c5b96f66c3210090d240f16a494376fb2e9a20"
  else
    sha256 "2a5ef52d78746194898ecaab218c58d76a1db30101a79aa635678634da5fdc7e"
  end

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
