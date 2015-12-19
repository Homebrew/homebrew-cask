cask 'pycharm-ce' do
  version '5.0.2'
  sha256 'ccb67b2b10c51b139f7d186b6670771487fe967bb10211e6d89896ce3b6125d0'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}-jdk-bundled.dmg"
  name 'PyCharm'
  name 'PyCharm Community Edition'
  name 'PyCharm CE'
  homepage 'https://www.jetbrains.com/pycharm'
  license :apache

  app 'PyCharm CE.app'
end
