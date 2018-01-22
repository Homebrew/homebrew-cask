cask 'station' do
  version '1.1.0'
  sha256 '8e294c91e4eb5f301be6c15aa90d76aed2093e2da17a7a09cdba22d63e814ddb'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/Station-#{version}-mac.zip"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom',
          checkpoint: 'fb159ddfabaa6f61d952f0375aaed52822521af737bf1a30529f7d4465afcc44'
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
