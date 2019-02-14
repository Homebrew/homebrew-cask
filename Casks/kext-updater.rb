cask 'kext-updater' do
  version '2.7.4'
  sha256 '601254143831c86d3fbffce7a111af27ed7d0d058ce41e8f91d05771ec296cac'

  url "https://bitbucket.org/profdrluigi/kextupdater/downloads/Kext%20Updater%20#{version}.zip"
  appcast 'https://update.kextupdater.de/kextupdater/appcast.xml'
  name 'Kext Updater'
  homepage 'https://bitbucket.org/profdrluigi/kextupdater'

  app 'Kext Updater.app'

  zap trash: [
               '~/Library/Preferences/com.slsoft.kextupdater.plist',
               '~/Library/Caches/com.slsoft.kextupdater',
               '~/Library/Saved Application State/com.slsoft.kextupdater.savedState',
               '/Library/Application Support/updater.bin',
             ]
end
