cask 'sip' do
  version '1.1.0'
  sha256 '289d72b25741181503fcf6c8cff7613a9bff4346259ad026d525cb53cdcba58c'

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
