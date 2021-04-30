cask "goodsync" do
  version "11.6.4"
  sha256 "fffadd5eca076e0b329df9bce784464d153753bd0bbe42880f2c995f762d3f7f"

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
