cask :v1 => 'pycharm' do
  version '4.0.3'
  sha256 '67e3c30781c62c34b744c8eef3688c48dccd98ac23afe965811f62f50907ad42'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  homepage 'http://www.jetbrains.com/pycharm/'
  license :commercial

  app 'PyCharm.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
