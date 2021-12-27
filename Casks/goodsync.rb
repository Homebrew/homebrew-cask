cask "goodsync" do
  version "11.9.8"
  sha256 "058c9b9c3eb864bbbcad7529fa4db1b2d3e7714e143d0b5c6d83a8f680642750"

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  name "GoodSync"
  desc "File synchronization and backup software"
  homepage "https://www.goodsync.com/"

  livecheck do
    url "https://www.goodsync.com/download?os=macos"
    regex(/GoodSync\s+for\s+Mac\s+v?\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :yosemite"

  app "GoodSync.app"

  zap trash: [
    "/Library/Application Support/GoodSync",
    "/Library/LaunchDaemons/com.siber.gs-server.plist",
    "~/.goodsync",
    "~/Library/Application Support/GoodSync",
    "~/Library/Preferences/com.sibersystems.goodsyncmac2000.plist",
  ]
end
