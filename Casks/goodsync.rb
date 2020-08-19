cask "goodsync" do
  version "11.3.0.0"
  sha256 "22bc69805b3128323511506a0f2dbad1b2f8a3e7800824d0e5bf1331eaf12cf7"

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast "https://www.goodsync.com/download?os=macos",
          must_contain: version.major_minor_patch
  name "GoodSync"
  homepage "https://www.goodsync.com/"

  depends_on macos: ">= :yosemite"

  app "GoodSync.app"
end
