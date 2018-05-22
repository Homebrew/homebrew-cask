cask 'station' do
  version '1.12.0'
  sha256 '5bcb8834cd2737fe98a6b1569ac06dbd7482c5b7eb0c59fd88c17a874d1e0ede'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/browserX-#{version}-mac.zip"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom',
          checkpoint: '1c94be07b31ca049022d8f11605adb6eb0bf3309d75729927f24c56d002979d4'
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
