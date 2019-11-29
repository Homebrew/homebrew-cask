cask 'kext-updater' do
  version '3.2.5'
  sha256 'adcfdcf6501c31cbc745df749a6e873fc74f801cb7f7a6986577723de32a50cc'

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
