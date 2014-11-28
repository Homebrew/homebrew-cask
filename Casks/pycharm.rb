cask :v1 => 'pycharm' do
  version '4.0'
  sha256 '8657c887809c88f6a8d678122adc92cb78c2c160faa7162bf501a1a79cec6a51'

  url "http://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  homepage 'http://www.jetbrains.com/pycharm/'
  license :unknown

  app 'PyCharm.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
