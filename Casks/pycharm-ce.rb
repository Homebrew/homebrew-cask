cask :v1 => 'pycharm-ce' do
  version '4.0.3'
  sha256 '1a88ee3565d82fec595d7d15ba23d1ad67faa85a83df4f4fd0104d5ad7b1ecea'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  homepage 'http://www.jetbrains.com/pycharm'
  license :unknown    # todo: improve this machine-generated value

  app 'PyCharm CE.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
