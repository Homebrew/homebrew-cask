cask :v1 => 'appcode' do
  version '3.1.1'
  sha256 'f549e0fdfb7dcd2a1553ca452a75c1cbc135e3d66b926de0c58dde59865f3b6c'

  url "http://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode'
  homepage 'http://www.jetbrains.com/objc/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'AppCode.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
