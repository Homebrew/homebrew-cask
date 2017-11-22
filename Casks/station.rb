cask 'station' do
  version '1.0.8'
  sha256 'c8e3735d0cf290341163991cfcd0fbf3ae0523debcb953e23c04a6479f78044b'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/Station-#{version}-mac.zip"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom',
          checkpoint: '723eff7d78895433fc218e4209e8037e1a988821781be1d4c351e7c4b7016f5a'
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
