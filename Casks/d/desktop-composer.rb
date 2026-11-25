cask "desktop-composer" do
  version "1.2"
  sha256 "37d89553ec8e0ac129d8469a1a86e7614219e770543eb3a3eaaa06dee61192d4"

  url "https://www.apptorium.com/public/products/desktop-composer/releases/DesktopComposer-#{version}.zip"
  name "Desktop Composer"
  desc "Appearance manager for the system and individual applications"
  homepage "https://www.apptorium.com/desktop-composer"

  livecheck do
    url "https://www.apptorium.com/updates/desktop-composer"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Desktop Composer.app"

  uninstall quit: "com.apptorium.DesktopComposer"

  zap trash: [
    "~/Library/Application Support/com.apptorium.DesktopComposer",
    "~/Library/Application Support/Desktop Composer",
    "~/Library/Caches/CloudKit/com.apptorium.DesktopComposer",
    "~/Library/Caches/com.apptorium.DesktopComposer",
    "~/Library/HTTPStorages/com.apptorium.DesktopComposer",
    "~/Library/HTTPStorages/com.apptorium.DesktopComposer.binarycookies",
    "~/Library/Preferences/com.apptorium.DesktopComposer.plist",
  ]
end
