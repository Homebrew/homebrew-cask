cask 'ddnet' do
  version '10.8.6'
  sha256 '94997c5c51057cef48a51ce670cefe49e67a8650b7d7918851d6fc65f184b94d'

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name 'DDNet'
  homepage 'https://ddnet.tw/'

  app 'DDNet.app'
  app 'DDNet-Server.app'
end
