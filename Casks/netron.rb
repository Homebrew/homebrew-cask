cask 'netron' do
  version '3.3.2'
  sha256 '9fa942a1fe92cb28ba1a2a408d9dae4d06dc15fde6477ad278d9c4a9fd6c3225'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
