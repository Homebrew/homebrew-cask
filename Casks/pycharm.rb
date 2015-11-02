cask :v1 => 'pycharm' do
  version '5.0'
  sha256 '21a1e8079d000580b5016e6459a87e29c413bdb6b1100308cfe815c1346913e9'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}-jdk-bundled.dmg"
  name 'PyCharm'
  homepage 'https://www.jetbrains.com/pycharm/'
  license :commercial

  app 'PyCharm.app'
end
