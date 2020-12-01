cask "goodsync" do
  version "11.4.8.8"
  sha256 "3571f812b46d688c481ac5055f55a2e2fee05cc353e3730869f7471db1b91b0b"

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast "https://www.goodsync.com/download?os=macos",
          must_contain: version.major_minor_patch
  name "GoodSync"
  desc "File synchronization and backup software"
  homepage "https://www.goodsync.com/"

  depends_on macos: ">= :yosemite"

  app "GoodSync.app"
end
