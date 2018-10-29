cask 'sip' do
  version '1.1.2'
  sha256 'eface4b80dc540420678d745f23a81708b1e4540971fbf8c5bb0e68eae35af1a'

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
