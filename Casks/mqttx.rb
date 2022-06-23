cask "mqttx" do
  arch = Hardware::CPU.intel? ? "" : "arm64-"

  version "1.8.0"

  if Hardware::CPU.intel?
    sha256 "c3b8e3f277175c3edd5882750457f9837bbc3d93d006192c8bd2fbe620c14788"
  else
    sha256 "1fe9630d3eaf67fae8164bdb8d265704859f93b61d9dc618c2d9dedb3486bc03"
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
