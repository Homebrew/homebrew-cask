cask "picfindr" do
  version "1.1.10"
  sha256 "78a804b40b3d570aed0d64a402d48cda06f9a002c050c32845752df2c4a9b0e1"

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
