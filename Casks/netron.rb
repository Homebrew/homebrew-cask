cask 'netron' do
  version '4.3.7'
  sha256 '32ce947bbc71b2a13f707525022d1ddb16d42d2b60a4cb12a17e9a40c1712ec6'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
