cask 'avocode' do
  version '2.16.1'
  sha256 '446849544f70150d9e18ef375c43160f075b48c338ecb2831f06c94a8f12e0b4'

  url "http://media.avocode.com/download/avocode-app/#{version}/Avocode-#{version}-mac.zip"
  name 'Avocode'
  homepage 'https://avocode.com/'

  auto_updates true

  app 'Avocode.app'

  zap delete: [
                '~/Library/Caches/com.madebysource.avocode',
                '~/Library/Caches/com.madebysource.avocode.ShipIt',
                '~/Library/Saved Application State/com.madebysource.avocode.savedState',
              ],
      trash:  [
                '~/.avocode',
                '~/Library/Application Support/Avocode',
                '~/Library/Preferences/com.madebysource.avocode.helper.plist',
                '~/Library/Preferences/com.madebysource.avocode.plist',
              ]
end
