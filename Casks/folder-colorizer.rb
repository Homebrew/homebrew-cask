cask "folder-colorizer" do
  version "4.7.2"
  sha256 "bfabfad8ca6cb1f55789896f0338763df04e118c0a233f3d11a181aa794390c0"

  url "https://ushining.softorino.com/shine_uploads/foldercolorizermac_#{version}.dmg"
  name "Folder Colorizer"
  desc "Folder icon editor and manager"
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
