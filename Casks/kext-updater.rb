cask 'kext-updater' do
  version '3.2.2'
  sha256 '17eb79942ac4151e98f8e990b6fe3f81bf9996aa67e47124e5c885b8a74bd63b'

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
