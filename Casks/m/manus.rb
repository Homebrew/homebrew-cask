cask "manus" do
  version "2.0.1"
  sha256 "c0c3f2b8518c129142e2d4e5042390f79b3e776fa211f7cfe61cb3c46d739284"

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
    "~/Library/Application Support/Manus",
    "~/Library/Caches/im.manus.desktop",
    "~/Library/Caches/im.manus.desktop.ShipIt",
    "~/Library/Caches/manus-updater",
    "~/Library/HTTPStorages/im.manus.desktop",
    "~/Library/Logs/Manus",
    "~/Library/Preferences/im.manus.desktop.plist",
    "~/Library/Saved Application State/im.manus.desktop.savedState",
    "~/Library/WebKit/im.manus.desktop",
  ]
end
