cask 'lighttable' do
  version '0.8.0'
  sha256 'e8f22456ec9aa0233d8eb407ce49455c728ecf24dc8c0b2e535a9d905173460c'

  url "https://github.com/LightTable/LightTable/releases/download/#{version}/lighttable-#{version}-mac.tar.gz"
  appcast 'https://github.com/LightTable/LightTable/releases.atom',
          :sha256 => 'b6820b0bdd9b59b3c875b5a40c49c527cdb5f2ae1a17c80f50f095303985f904'
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
