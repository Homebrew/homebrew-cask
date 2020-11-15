cask "kext-updater" do
  version "3.7.3"
  sha256 "ab6813b700d0ce22983e44bce398d472caee836881c4761d243ca4f3acb4d3a5"

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
