cask 'sip' do
  version '1.0.8'
  sha256 '8012996dea5a3ec779e1085455f914724b0bce11024cafa3049535e4a827abf1'

  url 'http://sipapp.io/download/sip.dmg'
  appcast 'http://sipapp.io/sparkle/sip.xml',
          checkpoint: '1fb27e70ad1d1f1374b0e3325eaf67557e916801e8804edb29b6ceb506a9cb41'
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
