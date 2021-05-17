cask "goodsync" do
  version "11.6.6"
  sha256 "9d84a281f6d002c502cd27195f0b62afcd0ddfc2b9f6d4fd56e1b8979747cb8f"

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
