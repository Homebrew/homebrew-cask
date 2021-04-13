cask "goodsync" do
  version "11.6.1"
  sha256 "8fe5ed43c98741b0516fc3cf21298f2c6a9b65733d2ded5704de8a7a44f49dbc"

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  name "GoodSync"
  desc "File synchronization and backup software"
  homepage "https://www.goodsync.com/"

  livecheck do
    url "https://www.goodsync.com/download?os=macos"
    strategy :page_match
    regex(/GoodSync\ for\ Mac\ v\ (\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :yosemite"

  app "GoodSync.app"
end
