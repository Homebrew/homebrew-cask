cask "goodsync" do
  version "11.3.1.1"
  sha256 "9100750c8c2ad21f88b9dfc9cfe0153e8cde1ab2c6ea70a14074603e8a3ab9fc"

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast "https://www.goodsync.com/download?os=macos",
          must_contain: version.major_minor_patch
  name "GoodSync"
  desc "File synchronization and backup software"
  homepage "https://www.goodsync.com/"

  depends_on macos: ">= :yosemite"

  app "GoodSync.app"
end
