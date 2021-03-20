cask "goodsync" do
  version "11.5.7"
  sha256 "9f730e09f1396e1aa8e52056cca9bb4c41a68b98a29f8d40d90a4a40199b19cd"

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
