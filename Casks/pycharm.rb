cask :v1 => 'pycharm' do
  version '5.0.1'
  sha256 'e0c06f0b3a60334ea85ad8ed2d6845b3f12967a1ae75a9c4596a9325287b9439'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}-jdk-bundled.dmg"
  name 'PyCharm'
  homepage 'https://www.jetbrains.com/pycharm/'
  license :commercial

  app 'PyCharm.app'
end
