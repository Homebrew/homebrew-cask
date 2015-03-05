cask :v1 => 'pycharm-ce' do
  version '4.0.4'
  sha256 'abbad61e767c29ddb0f3c7bf8d8baf1d22cf9c3ff06f542dc2b5460e4ba3d252'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  name 'PyCharm'
  name 'PyCharm Community Edition'
  name 'PyCharm CE'
  homepage 'http://www.jetbrains.com/pycharm'
  license :apache

  app 'PyCharm CE.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
