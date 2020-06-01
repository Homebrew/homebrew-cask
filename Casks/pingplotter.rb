cask 'pingplotter' do
  version '5.17.0'
  sha256 'ffaf9fcab61d0a1d97f8804a0cece8c7e4ab6928925d7efca74c9eb3e40616dd'

  url 'https://www.pingplotter.com/downloads/pingplotter_osx.zip'
  appcast 'https://www.pingplotter.com/download'
  name 'PingPlotter'
  homepage 'https://www.pingplotter.com/'

  app 'PingPlotter.app'

  uninstall quit: 'com.pingman.pingplotter.mac'

  zap trash: [
               '~/Library/Application Support/PingPlotter',
               '~/Library/Logs/PingPlotter',
               '~/Library/Preferences/com.pingman.pingplotter.mac.plist',
               '~/Library/Saved Application State/com.pingman.pingplotter.mac.savedState',
             ]
end
