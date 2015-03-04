cask :v1 => 'appcode' do
  version '3.1.4'
  sha256 'ca623c106337dd355732200d25f2e0a4776629dd4185a01f972e9ad34b417eb4'

  url "http://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode'
  homepage 'http://www.jetbrains.com/objc/'
  license :commercial

  app 'AppCode.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
