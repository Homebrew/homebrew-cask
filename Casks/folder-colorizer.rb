cask "folder-colorizer" do
  version "4.4.4"
  sha256 "d734acb9757f17ac96d6faa4ddb63d4a89c4c09724487da3e6e3f788cce1f890"

  url "https://ushining.softorino.com/shine_uploads/foldercolorizermac_#{version}.dmg"
  name "Folder Colorizer"
  desc "Folder icon editor & manager"
  homepage "https://softorino.com/folder-colorizer-mac/"

  livecheck do
    url "https://ushining.softorino.com/appcast.php?abbr=fcm"
    strategy :sparkle
  end

  auto_updates true

  app "Folder Colorizer.app"

  zap trash: [
    "/Users/Shared/Folder Colorizer",
    "~/Library/Application Support/Folder Colorizer",
    "~/Library/Preferences/com.softorino.foldercolorizer.plist",
    "~/Library/Saved Application State/com.softorino.foldercolorizer.savedState",
  ]
end
