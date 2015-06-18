cask :v1 => 'keytouch' do
  version :latest
  sha256 :no_check

  url 'http://www.usekeytouch.com/download/KeyTouch.zip'
  name 'KeyTouch'
  appcast 'http://www.usekeytouch.com/appcast.xml',
          :sha256 => '38d4730f59d425853de1b8e75c1a5e783e4feb4e4acb04f87ac074d7b18e6830'
  homepage 'http://usekeytouch.com/'
  license :gratis

  app 'KeyTouch.app'
end
