cask 'keytouch' do
  version '5.0.0'
  sha256 '74880471c6cd914a1ac43ed2acadbabd36136be4ad3e4de6cb91a38317d02149'

  url 'http://usekeytouch.com/download/KeyTouch.zip'
  appcast 'http://www.usekeytouch.com/appcast.xml',
          :sha256 => '83170a9909908aea862c0a66eb3e186b6aa8cfa592a4759079183db96fdae5d7'
  name 'KeyTouch'
  homepage 'http://usekeytouch.com/'
  license :gratis

  app 'KeyTouch.app'
end
