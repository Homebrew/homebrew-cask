cask 'ddnet' do
  version '10.3.5'
  sha256 'dc0a8139dc1e499caaa691978717a81e6840100ba84f927d27003d701500d0ba'

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name 'DDNet'
  homepage 'https://ddnet.tw/'

  app 'DDNet.app'
  app 'DDNet-Server.app'
end
