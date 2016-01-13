cask 'keytouch' do
  version '5.0.0'
  sha256 '74880471c6cd914a1ac43ed2acadbabd36136be4ad3e4de6cb91a38317d02149'

  url 'http://usekeytouch.com/download/KeyTouch.zip'
  appcast 'http://www.usekeytouch.com/appcast.xml',
          :checkpoint => 'b5b301f5367c7fe0240c2c7c121560a8263a7bb199afdb493f31126b55dfcf4c'
  name 'KeyTouch'
  homepage 'http://usekeytouch.com/'
  license :gratis

  app 'KeyTouch.app'
end
