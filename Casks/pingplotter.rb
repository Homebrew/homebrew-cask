cask 'pingplotter' do
  version '5.15.8'
  sha256 '666029ba0388976cb4aa3e92f7946d0a81aa4a038801994e717db66bc19000d4'

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
