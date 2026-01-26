cask "folder-colorizer" do
  version "4.11.8"
  sha256 "bc94f79a953d7682648d29f3740a77096bb94b638d83ef0ced0e5e4f5797c3c8"

  url "https://ushining.softorino.com/shine_uploads/foldercolorizermac_#{version}.dmg"
  name "Folder Colorizer"
  desc "Folder icon editor and manager"
  homepage "https://softorino.com/folder-colorizer-mac/"

  livecheck do
    url "https://ushining.softorino.com/appcast.php?abbr=fcm"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Folder Colorizer.app"

  zap trash: [
    "/Users/Shared/Folder Colorizer",
    "~/Library/Application Support/Folder Colorizer",
    "~/Library/Preferences/com.softorino.foldercolorizer.plist",
    "~/Library/Saved Application State/com.softorino.foldercolorizer.savedState",
  ]
end
