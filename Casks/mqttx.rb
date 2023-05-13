cask "mqttx" do
  arch arm: "arm64-"

  version "1.9.2"
  sha256 arm:   "46cc7522a4fba6f2019b024a923823b98f12155340e545de446a12c6f81f8959",
         intel: "c601b094dc644b0368a04cafe5da01945128d8decfc9a19e9eaae0fe1e18ab39"

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
