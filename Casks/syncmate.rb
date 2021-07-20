cask "syncmate" do
  version "8.2.491"
  sha256 "ef5c573984a93c45e97fa09d796845dd027d9dbd285056de07a3ec0cfe05772b"

  url "https://cdn.electronic.us/products/syncmate/mac/update/SyncMate_#{version}.zip",
      verified: "cdn.electronic.us/products/syncmate/"
  name "SyncMate"
  desc "All-in-one sync tool"
  homepage "https://mac.eltima.com/sync-mac.html"

  livecheck do
    url "https://cdn.eltima.com/download/syncmate-update/syncmate6.xml"
    strategy :sparkle
  end

  app "SyncMate.app"
end
