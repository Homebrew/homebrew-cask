cask "mqttx" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "1.13.3"
  sha256 arm:          "1113d6f099665ac51b867444032be40f6dd14d3b7c6e7340c675238d36116ecc",
         intel:        "182339f7c8e3bdcf6e14fd2d39114980acec509bb4bb16d3a158bedb931f90bd",
         arm64_linux:  "6f56a0d9466dcb465880bf64daec044ff962c86a3131a75c09aee140bb8f1bcf",
         x86_64_linux: "72562eae4423e845b30a284b147652146f1bb3b0607ecfddbb9cce2d3fabf209"

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
