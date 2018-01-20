cask 'station' do
  version '1.0.13'
  sha256 '387f672c10947460f8abc9c517e56a7655e31400156fa6c4e4a985e8c91c6710'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/Station-#{version}-mac.zip"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom',
          checkpoint: '88ae2da611a1308b0e39e19971ceb4b659ae8e64bf05057f3885dd5d07356823'
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
