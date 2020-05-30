cask 'netron' do
  version '4.2.5'
  sha256 'eab6386622066aef1d05663b9d0198bb2541c107714b1a7772799123e1fa87e3'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
