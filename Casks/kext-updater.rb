cask "kext-updater" do
  version "3.7.2"
  sha256 "c11a4c66ede5cc41c4e8c3a9b987ec752e05da9edd83d26c618e10b1602eab3e"

  url "https://update.kextupdater.de/kextupdater/kextupdaterng.zip"
  appcast "https://update.kextupdater.de/kextupdater/appcastng.xml"
  name "Kext Updater"
  desc "Automatic updater for kernel extensions required by 'Hackintoshes'"
  homepage "https://kextupdater.de/"

  app "Kext Updater.app"

  zap trash: [
    "~/Library/Caches/kextupdater.slsoft.de",
    "~/Library/Preferences/kextupdater.slsoft.de.plist",
    "~/Library/Preferences/kextupdaterhelper.slsoft.de.plist",
    "~/Library/Saved Application State/kextupdater.slsoft.de.savedState",
  ]
end
