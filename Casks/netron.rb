cask 'netron' do
  version '3.6.9'
  sha256 'c6d8b5d16334b0c913459f0fac1b236b97ac1d3145963f64c6aa76eb68b6a834'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
