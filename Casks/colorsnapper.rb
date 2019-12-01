cask 'colorsnapper' do
  version '1.6.0'
  sha256 '3a1c3c98201554a67e141cade48cd6508c2ffb0af2c6c441fa53e1d3761871b4'

  # cs2-binaries.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://cs2-binaries.s3.amazonaws.com/ColorSnapper2-#{version.dots_to_underscores}.zip"
  appcast 'https://cs2-appcast.s3.amazonaws.com/appcast.xml'
  name 'ColorSnapper 2'
  homepage 'https://colorsnapper.com/'

  app 'ColorSnapper2.app'

  uninstall quit: 'com.koolesache.ColorSnapper2'

  zap trash: [
               '~/Library/Application Support/ColorSnapper2',
               '~/Library/Application Support/com.koolesache.ColorSnapper2',
               '~/Library/Caches/com.koolesache.ColorSnapper2',
               '~/Library/Cookies/com.koolesache.ColorSnapper2.binarycookies',
               '~/Library/Preferences/com.koolesache.ColorSnapper2.plist',
             ]
end
