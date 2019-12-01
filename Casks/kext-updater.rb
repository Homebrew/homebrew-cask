cask 'kext-updater' do
  version '3.2.6'
  sha256 'e43c3abfd676b875e180c956384186cd6b648a4c58ac5e96d64dfecba76c5a23'

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
