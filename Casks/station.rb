cask 'station' do
  version '1.2.0'
  sha256 'e2439392c919855f1c5fbf7c72de2a3e59e8f1f3f587ee161a6360b3f5d1b575'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/Station-#{version}-mac.zip"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom',
          checkpoint: '95c9a5da3826ddf2eeb0fe5ee9425851fed4b34f9c9545d0100e1be5afef1aca'
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
