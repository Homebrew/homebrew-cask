cask "goodsync" do
  version "11.4.9.9"
  sha256 "8651edcbe6722d6c607b4fcdcdcecb70d647ea938aaed4df0900f8c7bdd262b3"

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast "https://www.goodsync.com/download?os=macos",
          must_contain: version.major_minor_patch
  name "GoodSync"
  desc "File synchronization and backup software"
  homepage "https://www.goodsync.com/"

  depends_on macos: ">= :yosemite"

  app "GoodSync.app"
end
