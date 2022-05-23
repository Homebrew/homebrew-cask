cask "goodsync" do
  version "11.11.1"
  sha256 "279f5d39fbe284842cd6af6082c71490c9f98902ac0ef8b8b3f640c5c438dfce"

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
