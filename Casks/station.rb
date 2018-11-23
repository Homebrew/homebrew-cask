cask 'station' do
  version '1.30.0'
  sha256 'bb41cc1be6fc8fe0b07e429a875fab3bf1c6b168ef55b14dde93e2a70e90b9b4'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/Station-#{version}.dmg"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom'
  name 'Station'
  homepage 'https://getstation.com/'

  auto_updates true

  app 'Station.app'

  uninstall quit: [
                    'org.efounders.BrowserX',
                    'org.efounders.BrowserX.helper',
                  ]

  zap trash: [
               '~/Library/Application Support/Station/',
               '~/Library/Caches/org.efounders.BrowserX',
               '~/Library/Caches/org.efounders.BrowserX.ShipIt',
               '~/Library/Logs/Station',
               '~/Library/Preferences/org.efounders.BrowserX.helper.plist',
               '~/Library/Preferences/org.efounders.BrowserX.plist',
               '~/Library/Saved Application State/org.efounders.BrowserX.savedState',
             ]
end
