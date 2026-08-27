cask "syncmate" do
  version "8.11.604"
  sha256 "4ac24541b8c87cef6001b0c9c7063408d2c00b2299f9d112af8fa911772e8e14"

  url "https://cdn.electronic.us/products/syncmate/mac/update/SyncMate_#{version}.zip",
      verified: "cdn.electronic.us/products/syncmate/"
  name "SyncMate"
  desc "All-in-one sync tool"
  homepage "https://mac.eltima.com/sync-mac.html"

  livecheck do
    url "https://cdn.electronic.us/products/syncmate/mac/update/syncmate6.xml"
    strategy :sparkle
  end

  depends_on macos: :monterey

  app "SyncMate.app"

  uninstall launchctl: "com.eltima.SyncMate.com.eltima.SyncMateService",
            quit:      ["com.eltima.SyncMate", "com.eltima.SyncMate.com.eltima.SyncMateService"]

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
end
