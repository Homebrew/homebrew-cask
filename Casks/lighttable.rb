cask 'lighttable' do
  version '0.8.1'
  sha256 '423e9caf6db4dfe26a0167ea6ba998d747f233e2cd9cd97b7fee027c5c0c3992'

  # github.com/LightTable/LightTable was verified as official when first introduced to the cask
  url "https://github.com/LightTable/LightTable/releases/download/#{version}/lighttable-#{version}-mac.tar.gz"
  appcast 'https://github.com/LightTable/LightTable/releases.atom'
  name 'Light Table'
  homepage 'http://lighttable.com/'

  app "lighttable-#{version}-mac/LightTable.app"
  binary "lighttable-#{version}-mac/light"

  zap trash: [
               '~/Library/Application Support/LightTable/plugins',
               '~/Library/Application Support/LightTable/settings',
               '~/Library/Preferences/com.kodowa.LightTable.plist',
             ]
end
