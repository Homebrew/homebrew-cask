cask 'pingplotter' do
  version '5.11.2'
  sha256 '77d6983fb1b58da903d24369762fef96901921037531f1e9fd300bcc3d1cd40f'

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
