cask "picfindr" do
  version "1.1.13"
  sha256 "d1fa04695d2014dddef580e5531c557235eb4519db8da946f92772bd8e743216"

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
