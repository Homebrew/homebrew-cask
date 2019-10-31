cask 'kext-updater' do
  version '3.1.9'
  sha256 'c8f21ddc5bd2887cfc10cf37f744dc8298126eea6089a002bdfeeba7d976dc07'

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
