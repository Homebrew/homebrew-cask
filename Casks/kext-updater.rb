cask "kext-updater" do
  version "3.6.2"
  sha256 "e46736dd448d1163048111f0c271fba11ce47b198a1dd74c6e25f89a489a2a17"

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
