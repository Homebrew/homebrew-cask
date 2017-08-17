cask 'pingplotter' do
  version :latest
  sha256 :no_check

  url 'https://www.pingplotter.com/downloads/pingplotter_osx.zip'
  name 'PingPlotter'
  homepage 'https://www.pingplotter.com/'

  app 'PingPlotter.app'

  uninstall quit: 'com.pingman.pingplotter.mac'

  zap delete: [
                '~/Library/Logs/PingPlotter',
                '~/Library/Saved Application State/com.pingman.pingplotter.mac.savedState',
              ],
      trash:  [
                '~/Library/Application Support/PingPlotter',
                '~/Library/Preferences/com.pingman.pingplotter.mac.plist',
              ]
end
