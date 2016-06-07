cask 'ddnet' do
  version '10.1.1'
  sha256 'df4a03f0b6431ecc273c60920a5fd386cee0ee45dd5271f423b22af275760e41'

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name 'DDNet'
  homepage 'https://ddnet.tw/'
  license :oss

  app 'DDNet.app'
  app 'DDNet-Server.app'
end
