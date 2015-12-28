cask 'pycharm' do
  version '5.0.3'
  sha256 '4cf5ba4799cb897e65ae989b77d518ba544871f460776786c1a9db5f6f80c1b3'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}-jdk-bundled.dmg"
  name 'PyCharm'
  homepage 'https://www.jetbrains.com/pycharm/'
  license :commercial

  app 'PyCharm.app'
end
