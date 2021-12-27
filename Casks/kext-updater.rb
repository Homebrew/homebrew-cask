cask "kext-updater" do
  version "4.0.0,400"
  sha256 :no_check

  url "https://update.kextupdater.de/kextupdater/kextupdaterng.zip"
  name "Kext Updater"
  desc "Automatic updater for kernel extensions required by 'Hackintoshes'"
  homepage "https://kextupdater.de/"

  livecheck do
    url "https://update.kextupdater.de/kextupdater/appcastng.xml"
    strategy :sparkle
  end

  app "Kext Updater.app"

  zap trash: [
    "~/Library/Caches/kextupdater.slsoft.de",
    "~/Library/Preferences/kextupdater.slsoft.de.plist",
    "~/Library/Preferences/kextupdaterhelper.slsoft.de.plist",
    "~/Library/Saved Application State/kextupdater.slsoft.de.savedState",
  ]
end
