cask "syncmate" do
  version "8.3.494"
  sha256 "af9c10f32dd77d930d97dc4e30a8af5af9f6ba1387b8d0c142667c4af586874e"

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

  caveats do
    requires_rosetta
  end
end
