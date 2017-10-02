cask 'avocode' do
  version '2.15.5'
  sha256 'b07baa941923eee28e57f52937927b8295753166ece18eb9a493bb130087884a'

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
