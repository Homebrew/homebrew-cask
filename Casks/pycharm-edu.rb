cask :v1 => 'pycharm-edu' do
  version '2.0.2'
  sha256 '9801d8d8a32632600f416e68879f992a4e1875ead354978e3016c66fa775a2f0'

  url "https://download.jetbrains.com/python/pycharm-edu-#{version}.dmg"
  name 'PyCharm'
  name 'PyCharm Edu'
  name 'PyCharm Educational Edition'
  homepage 'https://www.jetbrains.com/pycharm-edu/'
  license :apache

  app 'PyCharm Edu.app'
end
