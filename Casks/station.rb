cask 'station' do
  version '1.0.6'
  sha256 '6100b48431b40fd63a9b390954cf85d8f7f83d0f96033086a43d0d8f53fe4702'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/Station-#{version}-mac.zip"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom',
          checkpoint: 'd36cc1d20afff418d43b50fa8725dbf90b01cd126582e0eb0eae787e9aa4e271'
  name 'Station'
  homepage 'https://getstation.com/'

  auto_updates true

  app 'Station.app'

  uninstall quit: [
                    'org.efounders.BrowserX',
                    'org.efounders.BrowserX.helper',
                  ]

  zap trash: '~/Library/Application Support/Station/'
end
