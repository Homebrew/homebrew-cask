cask "goodsync" do
  version "11.3.9.9"
  sha256 "f7225030255e8ca5d5103543f8f7d819e6c453b7acae6fd7c81498fb1cde191c"

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast "https://www.goodsync.com/download?os=macos",
          must_contain: version.major_minor_patch
  name "GoodSync"
  desc "File synchronization and backup software"
  homepage "https://www.goodsync.com/"

  depends_on macos: ">= :yosemite"

  app "GoodSync.app"
end
