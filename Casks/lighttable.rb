cask :v1 => 'lighttable' do
  version '0.6.7'
  sha256 'b398d71401abf476fd7f6c36b326d2d4459782783a07e62d2d631a67c1bc1cb3'

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
