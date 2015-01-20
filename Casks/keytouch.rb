cask :v1 => 'keytouch' do
  version :latest
  sha256 :no_check

  url 'http://www.usekeytouch.com/download/KeyTouch.zip'
  name 'KeyTouch'
  homepage 'http://usekeytouch.com/'
  license :gratis

  app 'KeyTouch.app'
end
