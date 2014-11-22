cask :v1 => 'lighttable' do
  version '0.7.1'
  sha256 '6412ad9f4036379c42011cf7f97eb07d87471a1ece8db16c8dc26054539146e7'

  url "https://d35ac8ww5dfjyg.cloudfront.net/playground/bins/#{version}/LightTableMac.zip"
  homepage 'http://www.lighttable.com/'
  license :unknown

  app 'LightTable/LightTable.app'
  binary 'LightTable/light'

  zap :delete => [
                  '~/Library/Application Support/LightTable/plugins',
                  '~/Library/Application Support/LightTable/settings',
                  '~/Library/Preferences/com.kodowa.LightTable.plist',
                 ]
end
