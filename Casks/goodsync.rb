cask "goodsync" do
  version "11.8.7"
  sha256 "c93f6e50cc3bbe1f035aca2918c4b6ca3686efc7e2446e89c3f6f4562de868b4"

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
