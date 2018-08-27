cask 'ddnet' do
  version '11.1.9'
  sha256 '8cbdf116b8dbb14c03717cb84af7717439702d119b010c1d0cf013708b130e16'

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name 'DDNet'
  homepage 'https://ddnet.tw/'

  app 'DDNet.app'
  app 'DDNet-Server.app'
end
