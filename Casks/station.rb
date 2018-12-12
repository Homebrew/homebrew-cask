cask 'station' do
  version '1.31.0'
  sha256 '7a196199575c21f4ab3c335e5a11b179c143b93a66ba16e5366d615bccf97f62'

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
