cask :v1 => 'appcode' do
  version '3.1.3'
  sha256 '36a7429ae57d7855a83b2d7d461c3ccf2d61b125249c532a254e6625746561c6'

  url "http://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode'
  homepage 'http://www.jetbrains.com/objc/'
  license :commercial

  app 'AppCode.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
