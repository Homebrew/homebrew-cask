cask 'sip' do
  version '1.1.5'
  sha256 'd6719ec395da812dc1e2cd349da8d6ca37cc13db11063b01312595b2081ab05d'

  url 'https://sipapp.io/download/sip.dmg'
  appcast 'https://sipapp.io/updates/v1/sip.xml'
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
