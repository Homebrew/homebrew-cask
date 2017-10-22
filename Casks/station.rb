cask 'station' do
  version '1.0.5'
  sha256 '5efeb8a88a6e3ed18ea2f8e8341d20fbeaf312ed22693e160b9dc3fd15525e45'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/Station-#{version}-mac.zip"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom',
          checkpoint: '0608fa00c895bea3a8c2ed357ce9fecda735d74347fcb477f595383f741b412b'
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
