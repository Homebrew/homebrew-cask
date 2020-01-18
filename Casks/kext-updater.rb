cask 'kext-updater' do
  version '3.3.5'
  sha256 '75e5aea23ebec11ca0cfb6d757dddb1033b5ec9fffcfd38aad8ecc2c86abd887'

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
