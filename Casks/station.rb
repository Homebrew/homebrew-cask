cask 'station' do
  version '1.0.4'
  sha256 'a27192f678bde5f5c63256daffef71e1be0b826ed0af50a684f4a9a393060b85'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/Station-#{version}-mac.zip"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom',
          checkpoint: '8d5079c463f3b837cf971290c7e42b81e80f14d0481b1de1a2524fc1ff4f0588'
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
