cask 'kext-updater' do
  version '3.2.1'
  sha256 '4e72435a2c79c1c0a58a5e861da0fe2382b85beb5c2d680966943883aeaa980f'

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
