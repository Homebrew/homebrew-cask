cask :v1 => 'pycharm-edu' do
  version '2.0.3'
  sha256 '2c3b98051c90e5647ada4e4f3b33ad1c974b88ee1f30d1631e7a874e8dcafe3d'

  url "https://download.jetbrains.com/python/pycharm-edu-#{version}.dmg"
  name 'PyCharm'
  name 'PyCharm Edu'
  name 'PyCharm Educational Edition'
  homepage 'https://www.jetbrains.com/pycharm-edu/'
  license :apache

  app 'PyCharm Edu.app'
end
