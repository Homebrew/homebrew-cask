cask 'sip' do
  version '1.0.1'
  sha256 '0164d5136e57e016bd8f01a9b04418e5bbfabf32cddf3d4d435ea14fcbea713d'

  url 'http://sipapp.io/download/sip.dmg'
  appcast 'http://sipapp.io/sparkle/sip.xml',
          checkpoint: '11a2777cc30899fc9ac3299cc1590180a64c342b07b6e5e32724a6187b5f7125'
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
