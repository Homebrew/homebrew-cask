cask "folder-colorizer" do
  version "4.0.0"
  sha256 "4f9ff6d49b34b01f874e88af6c83138dc198f8444113a28c3780c78c73868806"

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
