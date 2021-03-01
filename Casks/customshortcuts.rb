cask "customshortcuts" do
  version "1.0.5,96"
  sha256 "a5cc8e20b91cb45b09263087e2fa28d000c5ee412e4c2d0341fbe83d2354cc07"

  url "https://dl.houdah.com/customShortcuts/updates/cast_assets/CustomShortcuts#{version.before_comma}.zip"
  name "CustomShortcuts"
  homepage "https://www.houdah.com/customShortcuts/"

  livecheck do
    url "https://www.houdah.com/customShortcuts/updates/cast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "CustomShortcuts.app"

  zap trash: [
    "~/Library/Application Support/com.houdah.CustomShortcuts",
    "~/Library/Caches/com.houdah.CustomShortcuts",
    "~/Library/Preferences/com.houdah.CustomShortcuts.plist",
  ]
end
