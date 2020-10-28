cask "kext-updater" do
  version "3.6.8"
  sha256 "91a2c119a92bce08310f4383ea4cd2b13496a4c6f8a729f2e958ef45c8fdf915"

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
