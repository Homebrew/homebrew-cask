cask 'netron' do
  version '4.1.4'
  sha256 '64ac077583782e4fdcbf1a2d098736cbb34a4cfec9bd6ebb06c9de3d19760f8a'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
