cask "sandisk" do
  version "3.4.1"
  sha256 "ae95fd5e8abcc78b284a3117c481e5c24384c579090f9d2350ad2f5f93d15f18"

  url "https://downloads.sandisk.com/downloads/sandiskapp-mac.dmg"
  name "sandisk"
  desc "Managing SanDisk external drives"
  homepage "https://www.sandisk.com/topics/accessories/sandisk-app-for-backups"

  auto_updates false
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "SANDISK.app"

  zap trash: [
        "/Users/macuser/Library/HTTPStorages/com.sandisk.smz2.mac",
        "/Users/macuser/Library/Application Support/com.sandisk.smz2.mac",
        "/Users/macuser/Library/Application ",
        "/Users/macuser/Library/ApplicationSupport/CrashReporter/Intervals_55555555A-5555-5555-55A5-AA5555A55555.plist"
      ]
end