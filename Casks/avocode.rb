cask 'avocode' do
  version '2.22.1'
  sha256 '09f30cff4e158578a88b03c24e58ab0ab032e95e40d4a7abf7ef0478eb77356b'

  url "https://media.avocode.com/download/avocode-app/#{version}/Avocode-#{version}-mac.zip"
  name 'Avocode'
  homepage 'https://avocode.com/'

  auto_updates true

  app 'Avocode.app'

  zap trash: [
               '~/.avocode',
               '~/Library/Application Support/Avocode',
               '~/Library/Caches/com.madebysource.avocode',
               '~/Library/Caches/com.madebysource.avocode.ShipIt',
               '~/Library/Preferences/com.madebysource.avocode.helper.plist',
               '~/Library/Preferences/com.madebysource.avocode.plist',
               '~/Library/Saved Application State/com.madebysource.avocode.savedState',
             ]
end
