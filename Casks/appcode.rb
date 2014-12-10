cask :v1 => 'appcode' do
  version '3.1'
  sha256 '88c07d17b450f4ee4adfbe8ab412467e6b3148b36163257c194b1a099c33e0ee'

  url "http://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  homepage 'http://www.jetbrains.com/objc/'
  license :unknown    # todo: improve this machine-generated value

  app 'AppCode.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
