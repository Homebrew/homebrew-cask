cask 'avocode' do
  version '2.26.2'
  sha256 'f532333f06ad5208c676588ec8a45b29cb06c45b4deeef05b3a6c3d09d261886'

  url "https://media.avocode.com/download/avocode-app/#{version}/Avocode-#{version}-mac.zip"
  appcast 'https://avocode.com/changelog',
          checkpoint: 'c827b4d299e3807df1ea78d5ff1f15a320cbc8bed3d1479995116363a035db48'
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
