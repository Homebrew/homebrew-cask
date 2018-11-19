cask 'sip' do
  version '1.1.3'
  sha256 '3ea60d87c43669557733daa9abcaa34c08ef9ec205c1f4978312d2fa2720725c'

  url 'https://sipapp.io/download/sip.dmg'
  appcast 'https://sipapp.io/sparkle/sip.xml'
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
