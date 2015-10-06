cask :v1 => 'keytouch' do
  version :latest
  sha256 :no_check

  url 'http://www.usekeytouch.com/download/KeyTouch.zip'
  name 'KeyTouch'
  appcast 'http://www.usekeytouch.com/appcast.xml',
          :sha256 => '83170a9909908aea862c0a66eb3e186b6aa8cfa592a4759079183db96fdae5d7'
  homepage 'http://usekeytouch.com/'
  license :gratis

  app 'KeyTouch.app'
end
