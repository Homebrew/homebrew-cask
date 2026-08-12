cask "manus" do
  version "1.7.2"
  sha256 "48c5a46de6f7f832c7481e330bf0f779a570b5d44c12a67fe76f765e1bc45d8d"

  url "https://download.manus.im/Manus-Setup-#{version}.dmg"
  name "Manus"
  desc "AI agent for automating local computer workflows"
  homepage "https://manus.im/desktop"

  livecheck do
    url "https://download.manus.im/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey
  depends_on arch: :arm64

  app "Manus.app"

  uninstall quit: "im.manus.desktop"

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
