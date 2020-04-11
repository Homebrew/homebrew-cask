cask 'netron' do
  version '4.0.5'
  sha256 'f141076e56bd011ab600d37dd6f95be222c100dca8d6578f35744e209ed43609'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
