cask 'lighttable' do
  version '0.8.1'
  sha256 '423e9caf6db4dfe26a0167ea6ba998d747f233e2cd9cd97b7fee027c5c0c3992'

  url "https://github.com/LightTable/LightTable/releases/download/#{version}/lighttable-#{version}-mac.tar.gz"
  appcast 'https://github.com/LightTable/LightTable/releases.atom',
          checkpoint: '6195e1333c6a146c67861a8c7269e8c8405f04d628a0aa4742e159d3bfe98600'
  name 'Light Table'
  homepage 'http://www.lighttable.com/'
  license :mit

  app "lighttable-#{version}-mac/LightTable.app"
  binary "lighttable-#{version}-mac/light"

  zap delete: [
                '~/Library/Application Support/LightTable/plugins',
                '~/Library/Application Support/LightTable/settings',
                '~/Library/Preferences/com.kodowa.LightTable.plist',
              ]
end
