cask "syncmate" do
  version "8.9.563"
  sha256 "312fd1fe034b4e268bc009cb1532fa13a23a609fb78f0d4748738b824f314e70"

  url "https://cdn.electronic.us/products/syncmate/mac/update/SyncMate_#{version}.zip",
      verified: "cdn.electronic.us/products/syncmate/"
  name "SyncMate"
  desc "All-in-one sync tool"
  homepage "https://mac.eltima.com/sync-mac.html"

  livecheck do
    url "https://cdn.electronic.us/products/syncmate/mac/update/syncmate6.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

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
