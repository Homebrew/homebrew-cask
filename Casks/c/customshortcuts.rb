cask "customshortcuts" do
  version "1.2.1"
  sha256 "8855cbdcd314e6d8b1fe2364595fb36cd23e948914441c70f5e344f06b14e892"

  url "https://dl.houdah.com/customShortcuts/updates/cast_assets/CustomShortcuts#{version}.zip"
  name "CustomShortcuts"
  desc "Customise menu item keyboard shortcuts"
  homepage "https://www.houdah.com/customShortcuts/"

  livecheck do
    url "https://www.houdah.com/customShortcuts/updates/cast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "CustomShortcuts.app"

  zap trash: [
    "~/Library/Application Support/com.houdah.CustomShortcuts",
    "~/Library/Caches/com.houdah.CustomShortcuts",
    "~/Library/Preferences/com.houdah.CustomShortcuts.plist",
  ]
end
