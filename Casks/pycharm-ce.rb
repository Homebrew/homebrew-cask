cask 'pycharm-ce' do
  version '5.0.3'
  sha256 'e2f3b0a8916676965556e08d3fc2f309c0aa1e0528c33648cf6f2ba1c25e5403'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}-jdk-bundled.dmg"
  name 'Jetbrains PyCharm Community Edition'
  name 'PyCharm CE'
  homepage 'https://www.jetbrains.com/pycharm'
  license :apache

  app 'PyCharm CE.app'
end
