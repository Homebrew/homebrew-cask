cask "goodsync" do
  version "11.4.6.6"
  sha256 "b61c7fd88de4e640236584e1b83533d947a43fb29c715e75d0a28e7b5a85a242"

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast "https://www.goodsync.com/download?os=macos",
          must_contain: version.major_minor_patch
  name "GoodSync"
  desc "File synchronization and backup software"
  homepage "https://www.goodsync.com/"

  depends_on macos: ">= :yosemite"

  app "GoodSync.app"
end
