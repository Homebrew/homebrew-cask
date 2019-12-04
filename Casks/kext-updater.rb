cask 'kext-updater' do
  version '3.2.7'
  sha256 '8a8d4c0e35f51e274558affca409c0d02c29b7c3115fe4b6ddd704d788ae43fe'

  url 'https://update.kextupdater.de/kextupdater/kextupdaterng.zip'
  appcast 'https://update.kextupdater.de/kextupdater/appcastng.xml'
  name 'Kext Updater'
  homepage 'https://kextupdater.de/'

  app 'Kext Updater.app'

  zap trash: [
               '~/Library/Caches/kextupdater.slsoft.de',
               '~/Library/Preferences/kextupdater.slsoft.de.plist',
               '~/Library/Preferences/kextupdaterhelper.slsoft.de.plist',
               '~/Library/Saved Application State/kextupdater.slsoft.de.savedState',
             ]
end
