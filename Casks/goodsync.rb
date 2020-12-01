cask "goodsync" do
  version "11.4.8.8"
  sha256 "11a9df834cd8aac0ec31a6ffa41b02443c4bcd2a252dbd4e67a6425d72b775f0"

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast "https://www.goodsync.com/download?os=macos",
          must_contain: version.major_minor_patch
  name "GoodSync"
  desc "File synchronization and backup software"
  homepage "https://www.goodsync.com/"

  depends_on macos: ">= :yosemite"

  app "GoodSync.app"
end
