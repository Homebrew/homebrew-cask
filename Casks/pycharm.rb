cask :v1 => 'pycharm' do
  version '4.0.1'
  sha256 'e528cb0901b32509e60e0c86f0d28957cef7939d6f946985ae7be88c1e47e6cf'

  url "http://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  homepage 'http://www.jetbrains.com/pycharm/'
  license :unknown

  app 'PyCharm.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
