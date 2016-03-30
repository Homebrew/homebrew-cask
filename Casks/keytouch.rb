cask 'keytouch' do
  version '5.0.0'
  sha256 '74880471c6cd914a1ac43ed2acadbabd36136be4ad3e4de6cb91a38317d02149'

  url 'http://usekeytouch.com/download/KeyTouch.zip'
  appcast 'http://www.usekeytouch.com/appcast.xml',
          checkpoint: 'e79e772576249663536a124ce50816e9c0c137d833b28c1430bace83bfaa6c65'
  name 'KeyTouch'
  homepage 'http://usekeytouch.com/'
  license :gratis

  app 'KeyTouch.app'
end
