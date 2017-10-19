cask 'avocode' do
  version '2.16.0'
  sha256 '4b00edfa6d8c83ca0da372e0e2a14fd6e59de2be718e6a79d3b4f19b6da02d6c'

  url "http://media.avocode.com/download/avocode-app/#{version}/Avocode-#{version}-mac.zip"
  name 'Avocode'
  homepage 'https://avocode.com/'

  auto_updates true

  app 'Avocode.app'

  zap delete: [
                '~/.avocode',
                '~/Library/Application Support/Avocode',
                '~/Library/Caches/com.madebysource.avocode',
                '~/Library/Caches/com.madebysource.avocode.ShipIt',
                '~/Library/Preferences/com.madebysource.avocode.helper.plist',
                '~/Library/Preferences/com.madebysource.avocode.plist',
                '~/Library/Saved Application State/com.madebysource.avocode.savedState',
              ]
end
