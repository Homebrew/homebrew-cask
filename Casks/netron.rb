cask 'netron' do
  version '2.1.8'
  sha256 '2b01111390c9e8755c00c588c8fb66ae8c2589cc949165246cf20eb78d0e11f0'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
