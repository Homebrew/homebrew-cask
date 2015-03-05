cask :v1 => 'pycharm' do
  version '4.0.4'
  sha256 '56eeeb15a1b0f2b0fbbb9fc918f3b6eb5ba5f9bbbfcb2b032864fbfdbc4c5b87'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  name 'PyCharm'
  homepage 'http://www.jetbrains.com/pycharm/'
  license :commercial

  app 'PyCharm.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
