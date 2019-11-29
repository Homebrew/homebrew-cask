cask 'netron' do
  version '3.5.7'
  sha256 '98e932a041a40ac80b05915437fb7545c8b8596e8ba26d0b481bd35df2c4e95d'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
