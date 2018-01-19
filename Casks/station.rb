cask 'station' do
  version '1.0.14'
  sha256 '8125d5341f64637f1f1c975f11a3e97ccba8e24e1e0e80bebe78fce27b36ec26'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/Station-#{version}-mac.zip"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom',
          checkpoint: '85fcfd9f8e586d85cbe00c2e6d5222c7dc9dde516661c5490988173adaf1098a'
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
