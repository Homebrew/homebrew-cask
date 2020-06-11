cask 'netron' do
  version '4.3.2'
  sha256 '61e6c7faf1b8cd3dbcc98200b324d01862bdd2347f898781185ee840d4ec75ba'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
