cask 'pingplotter' do
  version '5.15.8'
  sha256 'dcc7eed17dc815c76c3a974837d154f82be6f361ed449f9a904239f0cf0d912c'

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
