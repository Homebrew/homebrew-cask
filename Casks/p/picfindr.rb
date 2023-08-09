cask "picfindr" do
  version "1.4.1"
  sha256 "fba6bf9b1bc20b21a39794aeea0b624d8b0d9383f50355aebf7446599f8f7246"

  url "https://ushining.softorino.com/shine_uploads/picfindr_#{version}.dmg"
  name "picfindr"
  desc "Search engine & manager for free stock images"
  homepage "https://softorino.com/picfindr/"

  livecheck do
    url "https://api.softorino.com/live/app-manager/v3/pfm/mac/updates"
    strategy :sparkle
  end

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
