cask "syncmate" do
  version "8.10.575"
  sha256 "40338edb0651afd9578333467ff847053e62b8b82017193dda7418abb1ef87a3"

  url "https://cdn.electronic.us/products/syncmate/mac/update/SyncMate_#{version}.zip",
      verified: "cdn.electronic.us/products/syncmate/"
  name "SyncMate"
  desc "All-in-one sync tool"
  homepage "https://mac.eltima.com/sync-mac.html"

  livecheck do
    url "https://cdn.electronic.us/products/syncmate/mac/update/syncmate6.xml"
    strategy :sparkle
  end

  app "SyncMate.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.eltima.syncmate.com.eltima.syncmateservice.sfl*",
    "~/Library/Application Support/SyncMate*",
    "~/Library/Caches/com.eltima.SyncMate",
    "~/Library/HTTPStorages/com.eltima.SyncMate",
    "~/Library/Logs/SyncMate.log",
    "~/Library/Preferences/com.eltima.SyncMate.com.eltima.SyncMateService.plist",
    "~/Library/Preferences/com.eltima.SyncMate.plist",
    "~/Library/Saved Application State/com.eltima.SyncMate.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
