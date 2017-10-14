cask 'station' do
  version '1.0.2'
  sha256 '34125d3682601ac81f36f8c4fa960671d2e2cadee01adb3d0547586b59e80ade'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/Station-#{version}-mac.zip"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom',
          checkpoint: '2900edb43ecc8465a2b75c995687c93ade91877ab271e3c9a94d53485469272b'
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
