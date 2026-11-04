cask "manus" do
  version "2.1.1"
  sha256 "567ee789f4350acd964ef143b41eb405795649420ffecc7d3ce8dde642868bcb"

  url "https://download.manus.im/Manus-Setup-#{version}.dmg"
  name "Manus"
  desc "AI agent for automating local computer workflows"
  homepage "https://manus.im/desktop"

  livecheck do
    url "https://download.manus.im/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Manus Studio.app"

  uninstall launchctl: [
              "application.im.manus.desktop.capture-helper.*",
              "application.im.manus.desktop.computer-use.*",
            ],
            quit:      "im.manus.desktop"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/im.manus.desktop.sfl*",
    "~/Library/Application Support/Manus",
    "~/Library/Caches/im.manus.desktop",
    "~/Library/Caches/im.manus.desktop.ShipIt",
    "~/Library/Caches/manus-updater",
    "~/Library/HTTPStorages/im.manus.desktop",
    "~/Library/Logs/Manus Studio",
    "~/Library/Logs/Manus",
    "~/Library/Preferences/im.manus.desktop.plist",
    "~/Library/Saved Application State/im.manus.desktop.savedState",
    "~/Library/WebKit/im.manus.desktop",
  ]
end
