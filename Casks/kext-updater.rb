cask 'kext-updater' do
  version '3.3.9'
  sha256 'c1ea70bbfb6eeae36768c17c5a441aeca4065c0ade57163a9a3d69d9818c8ea7'

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
