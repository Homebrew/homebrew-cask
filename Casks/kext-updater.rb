cask 'kext-updater' do
  version '3.1.8'
  sha256 'b79bc7847b30e06326be6f3f3658b1ebf85d5f0e75513504bc6827faae370a1d'

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
