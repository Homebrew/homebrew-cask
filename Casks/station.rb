cask 'station' do
  version '1.0.9'
  sha256 'b1b656c8394f7da5d72ec4809e5877599565a0a56fcf9d9d1b20b24759199394'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/Station-#{version}-mac.zip"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom',
          checkpoint: '2927f13727accded93b5a72dae1f649d1f3d6a4f227bbdf254e3ccbc8603c02b'
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
