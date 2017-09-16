cask 'avocode' do
  version '2.15.3'
  sha256 '503f2db58dbd077051d9b22b71eea417327fc9cb90c162bd54b551e3e60e065b'

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
