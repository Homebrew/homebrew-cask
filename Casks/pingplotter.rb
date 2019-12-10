cask 'pingplotter' do
  version '5.11.5'
  sha256 'edacf49d958d9aa033e0b8a2e8a1246ddcdaf4ea9574cc0e1b989937e75bf877'

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
