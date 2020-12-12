cask "customshortcuts" do
  version "1.0.4"
  sha256 "419c34774ebaa50d235322372a33a0050f59b9edd521696bd349898d5e764b9f"

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
