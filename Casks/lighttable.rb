cask :v1 => 'lighttable' do
  version '0.7.2'
  sha256 '236bb18d6715ce3095c975871b7c7f495f306a086dce8a50ff35f267a25c5163'

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
