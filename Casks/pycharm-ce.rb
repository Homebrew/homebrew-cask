cask :v1 => 'pycharm-ce' do
  version '4.0.1'
  sha256 'a2b4c0b95a1ca5d4ce485e36de7f4cde2ee8efe359e2a45af17a04de8c2a3290'

  url "http://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  homepage 'http://www.jetbrains.com/pycharm'
  license :unknown

  app 'PyCharm CE.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
