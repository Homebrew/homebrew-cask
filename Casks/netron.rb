cask 'netron' do
  version '3.6.7'
  sha256 '213c723e63435fd09a1638b5464f7921cc0e38f15f6a39948971bed27f7b9d4e'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
