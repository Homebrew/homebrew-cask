cask "goodsync" do
  version "11.8.0"
  sha256 "f4182cbf703e0d06490effdfb65ab4c80cf84462f2e62e6bb8479d838a4a17bc"

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  name "GoodSync"
  desc "File synchronization and backup software"
  homepage "https://www.goodsync.com/"

  livecheck do
    url "https://www.goodsync.com/download?os=macos"
    regex(/GoodSync\s+for\s+Mac\s+v?\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :yosemite"

  app "GoodSync.app"
end
