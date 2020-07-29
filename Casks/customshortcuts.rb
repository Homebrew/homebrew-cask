cask "customshortcuts" do
  version "1.0.3"
  sha256 "9f631181921e5545a5084cf388120aa15f4ee433890586cbdd9a78e66e81f75e"

  url "https://dl.houdah.com/customShortcuts/updates/cast_assets/CustomShortcuts#{version}.zip"
  appcast "https://www.houdah.com/customShortcuts/updates/cast.xml"
  name "CustomShortcuts"
  homepage "https://www.houdah.com/customShortcuts/"

  auto_updates true

  app "CustomShortcuts.app"

  zap trash: [
    "~/Library/Application Support/com.houdah.CustomShortcuts",
    "~/Library/Caches/com.houdah.CustomShortcuts",
    "~/Library/Preferences/com.houdah.CustomShortcuts.plist",
  ]
end
