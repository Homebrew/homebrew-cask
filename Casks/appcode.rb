cask :v1 => 'appcode' do
  version '3.1.2'
  sha256 'ab3c261c02d183d9783ea79458ea2b3c4588c28e1e30e791c59f4fb20094b9c1'

  url "http://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode'
  homepage 'http://www.jetbrains.com/objc/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'AppCode.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
