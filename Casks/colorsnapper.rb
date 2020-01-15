cask 'colorsnapper' do
  version '1.6.2'
  sha256 '687cfc23035804db63bca7fff606ab512c1297d057e0da6d7424f1e29ec427de'

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
