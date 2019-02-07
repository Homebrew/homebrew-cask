cask 'sip' do
  version '1.1.6'
  sha256 '9ed5279b8a514e14f32876997ba3760e9c0c29a198611b047eac433986759a0c'

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
