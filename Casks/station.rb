cask 'station' do
  version '1.8.1'
  sha256 'a81011617b030fa167a71dc20df2345456c688b7ac22f0e04bf415241d64474d'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/Station-#{version}-mac.zip"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom',
          checkpoint: 'f59a39da7f958f176f2ac912595930ca0665e1b22a4882d517d9081ec9bef419'
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
