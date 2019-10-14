cask 'netron' do
  version '3.4.3'
  sha256 '378a79b869a67a8c473b61e9fd2c94432116357b144d1e222404bf9d32cc3a63'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
