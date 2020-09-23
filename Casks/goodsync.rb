cask "goodsync" do
  version "11.3.4.4"
  sha256 "28068bc07b7f83b6d15aec40ce0a50bdc5b79ee02d96412714b9bfdaa92edc4c"

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast "https://www.goodsync.com/download?os=macos",
          must_contain: version.major_minor_patch
  name "GoodSync"
  desc "File synchronization and backup software"
  homepage "https://www.goodsync.com/"

  depends_on macos: ">= :yosemite"

  app "GoodSync.app"
end
