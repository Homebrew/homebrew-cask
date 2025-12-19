cask "goodsync" do
  version "12.9.19"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.goodsync.com/download/goodsync-vsub-mac.dmg"
  name "GoodSync"
  desc "File synchronisation and backup software"
  homepage "https://www.goodsync.com/"

  livecheck do
    url "https://www.goodsync.com/news-mac"
    regex(/Version\sv?\s*(\d+(?:\.\d+)+)/i)
  end

  app "GoodSync.app"

  zap trash: [
    "/Library/Application Support/GoodSync",
    "/Library/LaunchDaemons/com.siber.gs-server.plist",
    "~/.goodsync",
    "~/Library/Application Support/GoodSync",
    "~/Library/Preferences/com.sibersystems.goodsyncmac2000.plist",
  ]
end
