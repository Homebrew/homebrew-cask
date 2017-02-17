cask 'sip' do
  version '0.9.6'
  sha256 '6f3091851190fdc1c1b5742fa6039dc11b007fa0db2c81fdc1770ca2e834527b'

  url 'http://sipapp.io/download/sip.dmg'
  appcast 'http://sipapp.io/sparkle/sip.xml',
          checkpoint: '4853ffd0b9743d05640a1ec6cc22731e255060aa9b8579b5ed15e0de0ffc8fe7'
  name 'Sip'
  homepage 'http://sipapp.io/'

  depends_on macos: '>= :el_capitan'

  app 'Sip.app'
end
