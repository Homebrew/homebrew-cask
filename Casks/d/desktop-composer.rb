cask "desktop-composer" do
  version "1.0"
  sha256 "2bcc7ffbec050493814130640f85a26e0ea2bd141137d5abf6712e387e845b83"

  url "https://www.apptorium.com/public/products/desktop-composer/releases/DesktopComposer-#{version}.zip"
  name "Desktop Composer"
  desc "Change system and apps' look in one click"
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
