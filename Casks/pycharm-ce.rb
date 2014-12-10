cask :v1 => 'pycharm-ce' do
  version '4.0.2'
  sha256 '3e507c64f012a32ac7e105315a7aedb32a9c0ccb2995fe2736e189fb71798d99'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  homepage 'http://www.jetbrains.com/pycharm'
  license :unknown

  app 'PyCharm CE.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
