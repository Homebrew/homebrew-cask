cask 'netron' do
  version '3.3.3'
  sha256 '0edd5840f66dec6d352bd8bd8c8bd6d80d7bff2aa54b3d81e4ba9e0062b6a0ec'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
