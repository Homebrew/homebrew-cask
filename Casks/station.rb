cask 'station' do
  version '1.0.11'
  sha256 '5881921e276432f66ccf123c14d473d3d7e4017e2786a11baa6bed35d249b767'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/Station-#{version}-mac.zip"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom',
          checkpoint: 'bac385e7e243cd69b72e72e82e5654f4265273a8c5435ca3c73554a1f41b30ee'
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
