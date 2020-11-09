cask "kext-updater" do
  version "3.7.1"
  sha256 "9fc6f9ad25dcfda3826d601c75282171f55b8f8ae7297cfab4c42631a2836e48"

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
