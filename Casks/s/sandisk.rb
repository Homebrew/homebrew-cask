cask "sandisk" do
  version "3.4.1"
  sha256 :no_check

  url "https://downloads.sandisk.com/downloads/sandiskapp-mac.dmg"
  name "sandisk"
  desc "Managing SanDisk external drives"
  homepage "https://www.sandisk.com/topics/accessories/sandisk-app-for-backups"

  depends_on :macos
  depends_on arch: :arm64

  app "SANDISK.app"

  zap trash: [
    "~/Library/Application Support/com.sandisk.smz2.mac",
    "~/Library/HTTPStorages/com.sandisk.smz2.mac",
  ]
end
