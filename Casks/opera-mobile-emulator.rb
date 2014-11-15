cask :v1 => 'opera-mobile-emulator' do
  version '12.1'
  sha256 'de7e456dae31d140eefa25dae55e96b9dd773167d72c4e0ff407002922a05f1f'

  url "http://get.geo.opera.com/pub/opera/sdlbream/1210/Opera_Mobile_Emulator_#{version}_Mac.dmg"
  homepage 'http://www.opera.com/developer/mobile-emulator'
  license :unknown

  app 'Opera Mobile Emulator.app'
end
