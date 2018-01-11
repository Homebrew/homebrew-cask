cask 'station' do
  version '1.0.12'
  sha256 '73081b16d5f9bb47bfa2d1114ead757f1ee7c1e346e05bf43c7864f7a6891c42'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/Station-#{version}-mac.zip"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom',
          checkpoint: 'a30d4546a451f030601c2b7cd4ef8d4e06b5aa7ead6b96e9d8d08bbf9e3997b0'
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
