cask 'station' do
  version '1.19.0'
  sha256 '4c122517d66b2a3a83897b4def862742e806bffad67b4415210bcccda6bb4f7d'

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
