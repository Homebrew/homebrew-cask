cask 'station' do
  version '1.0.7'
  sha256 '41ebff3778a5eaa9030100b500a66cc9f80bbe865e69af1bc87ab1f0864e183c'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/Station-#{version}-mac.zip"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom',
          checkpoint: 'd373b7966ba6467445a5134690089543a74c9732e7b0837d5f9ddb18d03eb092'
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
