cask :v1 => 'pycharm' do
  version '4.0.2'
  sha256 'eaa342727ff49c437c71a3a2e3b499dc3f779374f4e29bab268731a7aac531cf'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  homepage 'http://www.jetbrains.com/pycharm/'
  license :unknown    # todo: improve this machine-generated value

  app 'PyCharm.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
