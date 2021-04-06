cask "syncmate" do
  version "8.1.475"
  sha256 "991e806647abe4bbcf84f37872d64ed9dc11856e6f3270fd74ceb293a7415be7"

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
