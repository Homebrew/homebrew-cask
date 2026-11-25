cask "customshortcuts" do
  version "2.0"
  sha256 "57e3cef4012cc7466a571cce82aa4b8064123f19ea16835c872a9b72ecffe45d"

  url "https://www.houdah.com/customShortcuts/download_assets/CustomShortcuts_#{version}.dmg"
  name "CustomShortcuts"
  desc "Customise menu item keyboard shortcuts"
  homepage "https://www.houdah.com/customShortcuts/"

  livecheck do
    url "https://www.houdah.com/customShortcuts/download.html"
    regex(/href=.*?CustomShortcuts_(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "CustomShortcuts.app"

  zap trash: [
    "~/Library/Application Support/com.houdah.CustomShortcuts",
    "~/Library/Caches/com.houdah.CustomShortcuts",
    "~/Library/HTTPStorages/com.houdah.CustomShortcuts",
    "~/Library/Preferences/com.houdah.CustomShortcuts.plist",
  ]
end
