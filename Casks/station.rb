cask 'station' do
  version '1.1.1'
  sha256 'ebdd38da79ff121066bc3413e50ce4d24c45d0b840d6c22d4c56aadf5ba7f607'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/Station-#{version}-mac.zip"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom',
          checkpoint: 'be5d0dcda0edcc10f8cba2d31d0a885f91196025cfa706ed3e84ac1b734aaa09'
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
