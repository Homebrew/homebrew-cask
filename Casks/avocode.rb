cask 'avocode' do
  version '2.14.8'
  sha256 '5b13e77eb45222f2533b2296a8b78fd94e81c5f1053684ee7db3a4b779883ed7'

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
