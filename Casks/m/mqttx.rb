cask "mqttx" do
  arch arm: "-arm64"

  version "1.12.0"
  sha256 arm:   "2a8323f35193cf1a6a2c80dc108c08ca7c2ff160b5475a3053e1d8a446bec476",
         intel: "b3c1c1a13f7d433159e00a415be338a1bb8b33211376fd5b940afeb270eba9be"

  url "https://github.com/emqx/MQTTX/releases/download/v#{version}/MQTTX-#{version}#{arch}.dmg",
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
