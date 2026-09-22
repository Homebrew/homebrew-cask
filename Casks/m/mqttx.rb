cask "mqttx" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "1.13.1"
  sha256 arm:          "253a636a0d32f136c3822616373dd7cfb2e89363e39a3257e9ccfe4813b55b40",
         intel:        "e65f76d629969a6312fec6fe9527d186833ac433bf3d25288ed037075e262704",
         arm64_linux:  "73875905d8f5a62a956d3666a35424629bf8fae3ee71ace7f2e270a916dcc1ad",
         x86_64_linux: "c2e400487277bd31dbd280066a3c127373baa09079ed7c12abd8b9c8c5b9dbb0"

  on_macos do
    depends_on macos: :monterey

    app "MQTTX.app"

    zap trash: [
      "~/Library/Application Support/MQTTX",
      "~/Library/Logs/MQTTX",
      "~/Library/Preferences/com.electron.mqttx.plist",
      "~/Library/Saved Application State/com.electron.mqttx.savedState",
    ]
  end
  on_linux do
    app_image "MQTTX-#{version}#{arch}.AppImage", target: "MQTTX.AppImage"

    zap trash: "~/.config/MQTTX"
  end

  url "https://github.com/emqx/MQTTX/releases/download/v#{version}/MQTTX-#{version}#{arch}.#{os}"
  name "MQTTX"
  desc "Cross-platform MQTT 5.0 Desktop Client"
  homepage "https://mqttx.app/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
