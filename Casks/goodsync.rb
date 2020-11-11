cask "goodsync" do
  version "11.4.4.4"
  sha256 "bdce46b95ec0db546ad3bd7b48698f0246ebbd00c715145c476e487d7c48ed0c"

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast "https://www.goodsync.com/download?os=macos",
          must_contain: version.major_minor_patch
  name "GoodSync"
  desc "File synchronization and backup software"
  homepage "https://www.goodsync.com/"

  depends_on macos: ">= :yosemite"

  app "GoodSync.app"
end
