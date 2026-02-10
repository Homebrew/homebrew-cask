cask "desktop-composer" do
  version "1.0.1"
  sha256 "e4addb4aabac365ca8392699685687a58711ad3607677d508c0c46c8fdcf7d45"

  url "https://www.apptorium.com/public/products/desktop-composer/releases/DesktopComposer-#{version}.zip"
  name "Desktop Composer"
  desc "Appearance manager for the system and individual applications"
  homepage "https://www.apptorium.com/desktop-composer"

  livecheck do
    url "https://www.apptorium.com/updates/desktop-composer"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Desktop Composer.app"

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
