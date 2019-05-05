cask 'netron' do
  version '3.0.5'
  sha256 '3b564c4796a3defd8d99440b6d5a6e1dc8d7cbde3d2b6c01f571d1dfc68c1c98'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
