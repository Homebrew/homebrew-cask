cask 'avocode' do
  version '2.14.7'
  sha256 '9de8fc2682fd5c0ff5cee51110ed40982eabd612856c9c07edc980792ccbd911'

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
