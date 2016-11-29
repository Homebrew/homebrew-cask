cask 'ddnet' do
  version '10.2.1'
  sha256 'f48d11c38aab8e699b618c29cc2f0c3c1883ee6c52e65c01ce2eb6829497a576'

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name 'DDNet'
  homepage 'https://ddnet.tw/'

  app 'DDNet.app'
  app 'DDNet-Server.app'
end
