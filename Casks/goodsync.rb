cask "goodsync" do
  version "11.3.3.3"
  sha256 "a439e1647d9febd2da74b61e47a9b496759662bc599264aa136ebd3c0f38fe16"

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast "https://www.goodsync.com/download?os=macos",
          must_contain: version.major_minor_patch
  name "GoodSync"
  desc "File synchronization and backup software"
  homepage "https://www.goodsync.com/"

  depends_on macos: ">= :yosemite"

  app "GoodSync.app"
end
