cask 'avocode' do
  version '2.25.2'
  sha256 '94c657bc3bcfbf8ac46e8f089abb6b09a215372aaa74609fc5e61c5ff0e545d8'

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
