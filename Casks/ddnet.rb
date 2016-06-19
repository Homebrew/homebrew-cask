cask 'ddnet' do
  version '10.1.1'
  sha256 '7dfc778f6f196e031b29e08cf1fe415554c1c9f64edf0d71bf7514e672387342'

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name 'DDNet'
  homepage 'https://ddnet.tw/'
  license :oss

  app 'DDNet.app'
  app 'DDNet-Server.app'
end
