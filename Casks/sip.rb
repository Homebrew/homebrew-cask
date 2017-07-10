cask 'sip' do
  version '1.0.3'
  sha256 '48e00da423bd0f3f0ba7d2181929ce722de9e95d3578e542973ca44fe6c5d318'

  url 'http://sipapp.io/download/sip.dmg'
  appcast 'http://sipapp.io/sparkle/sip.xml',
          checkpoint: 'e16b17ec807962bb5b5b3a78215c1baf8f341bb15ee37d1de8af08053e4d0cb8'
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
