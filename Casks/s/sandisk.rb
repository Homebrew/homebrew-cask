cask "sandisk" do
  version "3.4.1,2601"
  sha256 :no_check

  url "https://downloads.sandisk.com/downloads/sandiskapp-mac.dmg"
  name "SANDISK"
  desc "Managing SanDisk external drives"
  homepage "https://www.sandisk.com/topics/accessories/sandisk-app-for-backups"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on :macos

  app "SANDISK.app"

  zap trash: [
    "~/Library/Application Support/com.sandisk.smz2.mac",
    "~/Library/Caches/com.sandisk.smz2.mac",
    "~/Library/HTTPStorages/com.sandisk.smz2.mac",
    "~/Library/Preferences/com.sandisk.smz2.mac.plist",
  ]
end
