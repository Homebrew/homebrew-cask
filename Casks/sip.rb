cask 'sip' do
  version '1.1.1'
  sha256 '3269fa8017db26436d1308f6ecf20cff1d1f1ffa0af8397afb2fdd73c2381752'

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
