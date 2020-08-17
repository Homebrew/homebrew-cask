cask "goodsync" do
  version "11.2.8.8"
  sha256 "1f2f2eb481582a6121abd926f7165f8a92abda5af26d78b8b91f9c7e06e7cf72"

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast "https://www.goodsync.com/download?os=macos",
          must_contain: version.major_minor_patch
  name "GoodSync"
  homepage "https://www.goodsync.com/"

  depends_on macos: ">= :yosemite"

  app "GoodSync.app"
end
