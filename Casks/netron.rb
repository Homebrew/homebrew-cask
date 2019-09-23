cask 'netron' do
  version '3.3.6'
  sha256 'fe7fa93cdcfd739b322003b841c13790b9d40434d46a9d0f57adf50c904a2984'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
