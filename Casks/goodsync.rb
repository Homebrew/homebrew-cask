cask "goodsync" do
  version "11.7.0"
  sha256 "62808c68b12ac4df1b3ca6b66cff122e0eadda94ab0bbc6b9f4da496ce1e8110"

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
end
