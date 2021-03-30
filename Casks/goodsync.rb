cask "goodsync" do
  version "11.5.9"
  sha256 "bb5d742db557a8bbbcb56bff732a7babb9d88d223fddcb4a85d04e45d658243a"

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
