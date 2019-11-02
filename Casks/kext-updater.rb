cask 'kext-updater' do
  version '3.2.0'
  sha256 'a8d3fcf83a6f2e1f59c23f879ce0f73318793eaea6bfdd97de1b5ca3bef4275f'

  url 'https://update.kextupdater.de/kextupdater/Kext%20Updater.zip'
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
