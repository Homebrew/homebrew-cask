cask :v1 => 'pycharm-ce' do
  version '5.0'
  sha256 '770596ac464012439e2ff25b7ba3c49996f916a5af18a94a582c8427e61ca4e6'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}-jdk-bundled.dmg"
  name 'PyCharm'
  name 'PyCharm Community Edition'
  name 'PyCharm CE'
  homepage 'https://www.jetbrains.com/pycharm'
  license :apache

  app 'PyCharm CE.app'
end
