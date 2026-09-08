cask "mqttx" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "1.13.0"
  sha256 arm:          "0c5c012018493194528fa2ada5c5034f2bd24538e1a1e86d58192f768451cb46",
         intel:        "8381f33ab8e0f8bf2be18aac2484f4aa2d98d54f876006b93eaa0cba622caa71",
         arm64_linux:  "71591bfd99fe91dc440234b3b8f1aaedd3995ae5613ac32c84ee20679e8a3a53",
         x86_64_linux: "5974dd37ee4a2cd44da9f672f6c1d717438830e0e2ae49073a3f1b900c19fa04"

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
