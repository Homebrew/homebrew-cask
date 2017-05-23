cask 'ddnet' do
  version '10.6'
  sha256 'b9abb465cbc81b2fbe8d384a24d73d83136a9bd8527fd48766a43fe6ef934eff'

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name 'DDNet'
  homepage 'https://ddnet.tw/'

  app 'DDNet.app'
  app 'DDNet-Server.app'
end
