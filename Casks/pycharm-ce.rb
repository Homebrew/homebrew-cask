cask :v1 => 'pycharm-ce' do
  version '5.0.1'
  sha256 '10b2e8b9178bba3c860aab66884617942ef9630685ca1f963158a19bcb4023a4'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}-jdk-bundled.dmg"
  name 'PyCharm'
  name 'PyCharm Community Edition'
  name 'PyCharm CE'
  homepage 'https://www.jetbrains.com/pycharm'
  license :apache

  app 'PyCharm CE.app'
end
