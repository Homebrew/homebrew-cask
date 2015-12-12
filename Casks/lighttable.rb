cask :v1 => 'lighttable' do
  version '0.8.0'
  sha256 'e8f22456ec9aa0233d8eb407ce49455c728ecf24dc8c0b2e535a9d905173460c'

  url "https://github.com/LightTable/LightTable/releases/download/#{version}/lighttable-#{version}-mac.tar.gz"
  appcast 'https://github.com/LightTable/LightTable/releases.atom'
  name 'Light Table'
  homepage 'http://www.lighttable.com/'
  license :mit

  app "lighttable-#{version}-mac/LightTable.app"
  binary "lighttable-#{version}-mac/light"

  zap :delete => [
                  '~/Library/Application Support/LightTable/plugins',
                  '~/Library/Application Support/LightTable/settings',
                  '~/Library/Preferences/com.kodowa.LightTable.plist',
                 ]
end
