cask :v1 => 'appcode' do
  version '3.1.5'
  sha256 '17c78a828cf438b9497b9716f26585f279d40cab9a550f8e50551e93ee125372'

  url "http://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode'
  homepage 'http://www.jetbrains.com/objc/'
  license :commercial

  app 'AppCode.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
