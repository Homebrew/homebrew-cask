cask "picfindr" do
  version "1.6.10"
  sha256 "99df21332869539dc965fd3ca34b58d10f99e38dc963547689c1a353046bcee4"

  url "https://ushining.softorino.com/shine_uploads/picfindr_#{version}.dmg"
  name "picfindr"
  desc "Search engine & manager for free stock images"
  homepage "https://softorino.com/picfindr/"

  livecheck do
    url "https://ushining.softorino.com/appcast.php?abbr=pfm"
    strategy :sparkle
  end

  depends_on macos: ">= :big_sur"

  app "PicFindr.app"

  zap trash: [
    "/Users/Shared/PicFindr",
    "~/Library/Application Support/PicFindr",
    "~/Library/Caches/com.softorino.picfindr",
    "~/Library/HTTPStorages/com.softorino.picfindr",
    "~/Library/HTTPStorages/com.softorino.picfindr.binarycookies",
    "~/Library/Preferences/com.softorino.picfindr.plist",
    "~/Library/Saved Application State/com.softorino.picfindr.savedState",
  ]
end
