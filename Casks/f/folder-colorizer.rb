cask "folder-colorizer" do
  version "4.11.7"
  sha256 "808adcafef59c3f1b7d4358e4eb07798983c45f4ad29079c40f4eb204688f19c"

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
