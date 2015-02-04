cask :v1 => 'pycharm-ee' do
  version '1.0.1'
  sha256 'fedffd333b42bb43293ed08df3c463e961452c842dec8d72be37d419e30cfea6'

  url "http://download-cf.jetbrains.com/python/pycharm-educational-#{version}.dmg"
  name 'PyCharm'
  name 'PyCharm Educational Edition'
  name 'PyCharm EE'
  homepage 'https://www.jetbrains.com/pycharm-educational'
  license :apache

  app 'PyCharm EE.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
