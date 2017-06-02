cask 'sip' do
  version '1.0.2'
  sha256 'f7915c579f33333cdb257d0226c1a59169519e5695b281b41a0f846d9bac02f9'

  url 'http://sipapp.io/download/sip.dmg'
  appcast 'http://sipapp.io/sparkle/sip.xml',
          checkpoint: '0124a4c3287e7eb9450155d2628c6af5a57feb5d9f4e5b7e78feb1733b9c6a9c'
  name 'Sip'
  homepage 'https://sipapp.io/'

  depends_on macos: '>= :el_capitan'

  app 'Sip.app'

  zap delete: [
                '~/Library/Application Support/Sip',
                '~/Library/Application Support/io.sipapp.Sip-paddle',
                '~/Library/Caches/io.sipapp.Sip-paddle',
                '~/Library/Cookies/io.sipapp.Sip-paddle.binarycookies',
                '~/Library/Preferences/io.sipapp.Sip-paddle.plist',
                '~/Library/Saved Application State/io.sipapp.Sip-paddle.savedState',
              ]
end
