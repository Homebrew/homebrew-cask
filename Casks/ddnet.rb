cask 'ddnet' do
  version '10.4.3'
  sha256 '5721ca1775e01c9d534df8b6726ffbbc91d0582536b6657a8712e93dbe30b87d'

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name 'DDNet'
  homepage 'https://ddnet.tw/'

  app 'DDNet.app'
  app 'DDNet-Server.app'
end
