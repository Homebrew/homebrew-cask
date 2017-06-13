cask 'ddnet' do
  version '10.6.3'
  sha256 '9d3015e9630f24d366c02d771f4ab20a0fbfd9ffe508900d73bc931fca1f3682'

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name 'DDNet'
  homepage 'https://ddnet.tw/'

  app 'DDNet.app'
  app 'DDNet-Server.app'
end
