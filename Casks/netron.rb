cask 'netron' do
  version '4.0.7'
  sha256 '63738fdf9bbb5a67e8ea2320ae307d51b2450aa230a662337b348bf463ec9cb4'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
