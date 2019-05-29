cask 'colorsnapper' do
  version '1.5.1'
  sha256 '7e14a69e521153d9aa6fb8c75932b52e1ddb0f60b00178123fc0636b32010016'

  # amazonaws.com/cs2-binaries was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/cs2-binaries/ColorSnapper2-#{version.dots_to_underscores}.zip"
  appcast 'https://s3.amazonaws.com/cs2-appcast/appcast.xml'
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
