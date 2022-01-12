cask "customshortcuts" do
  version "1.1,102"
  sha256 "e6bda7397e2c2eed0475e1210bf33c22d3d94a2d78ebff89843685969a73f4dc"

  url "https://dl.houdah.com/customShortcuts/updates/cast_assets/CustomShortcuts#{version.csv.first}.zip"
  name "CustomShortcuts"
  desc "Customize menu item keyboard shortcuts"
  homepage "https://www.houdah.com/customShortcuts/"

  livecheck do
    url "https://www.houdah.com/customShortcuts/updates/cast.xml"
    strategy :sparkle
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
