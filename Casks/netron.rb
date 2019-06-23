cask 'netron' do
  version '3.2.0'
  sha256 'c76af31d919c4665b02659bc0b451c7b7c2c4509370943022d9a03d114e9be44'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
