cask 'sip' do
  version '1.0.9'
  sha256 '761de726be0e58e27d4b00e0d4a8792c17505e9eed1134419a2ce9e2dda27f95'

  url 'http://sipapp.io/download/sip.dmg'
  appcast 'http://sipapp.io/sparkle/sip.xml'
  name 'Sip'
  homepage 'https://sipapp.io/'

  depends_on macos: '>= :el_capitan'

  app 'Sip.app'

  zap trash: [
               '~/Library/Application Support/Sip',
               '~/Library/Application Support/io.sipapp.Sip-paddle',
               '~/Library/Caches/io.sipapp.Sip-paddle',
               '~/Library/Cookies/io.sipapp.Sip-paddle.binarycookies',
               '~/Library/Preferences/io.sipapp.Sip-paddle.plist',
               '~/Library/Saved Application State/io.sipapp.Sip-paddle.savedState',
             ]
end
