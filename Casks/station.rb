cask 'station' do
  version '1.0.10'
  sha256 '5469cf70db0310a8e0701e1dd2b7fabcd9100642b3d8b3c138c8b6b05cb5fb52'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/Station-#{version}-mac.zip"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom',
          checkpoint: '58df67d50dcf5cd8b4d37b0a8309ae2bfa8cbf8efbb69ea3cf95270abdc3d231'
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
