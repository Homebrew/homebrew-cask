cask 'ddnet' do
  version '9.2'
  sha256 'fe081c07a1fc97740533545dee46b754d6436c32d309b4201bd1aa708a62e25a'

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name 'DDNet'
  homepage 'https://ddnet.tw/'
  license :oss

  app 'DDNet.app'
  app 'DDNet-Server.app'
end
