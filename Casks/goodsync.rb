cask "goodsync" do
  version "11.3.8.8"
  sha256 "fdadb6f9930b9f0a62d15d158fb885cfd86d675ef74f6ebfe44d3346666c2a04"

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast "https://www.goodsync.com/download?os=macos",
          must_contain: version.major_minor_patch
  name "GoodSync"
  desc "File synchronization and backup software"
  homepage "https://www.goodsync.com/"

  depends_on macos: ">= :yosemite"

  app "GoodSync.app"
end
