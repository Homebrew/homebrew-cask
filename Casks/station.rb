cask 'station' do
  version '1.3.0'
  sha256 'e6b7b24f625a41bad553c7fa72584b6852b38ec19d91c2a5466246f7a5e82d78'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/Station-#{version}-mac.zip"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom',
          checkpoint: 'e2749b650eb68431d17ab6be7351aa5ae3d722c2f95a2e1ca4b4d9f85acb5411'
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
