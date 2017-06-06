cask 'ddnet' do
  version '10.6.2'
  sha256 '18ac26b35e740639b9c609a34b9d3c8bcecf39736e1001c8c6f3c4c952b59e8e'

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name 'DDNet'
  homepage 'https://ddnet.tw/'

  app 'DDNet.app'
  app 'DDNet-Server.app'
end
