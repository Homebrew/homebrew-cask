cask :v1 => 'pycharm-ce' do
  version '4.0'
  sha256 'a879358d671b91df2ca91aaa682d603da971afcd7c440c46ec3f4ea466c4add4'

  url "http://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  homepage 'http://www.jetbrains.com/pycharm'
  license :unknown

  app 'PyCharm CE.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
