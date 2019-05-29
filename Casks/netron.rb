cask 'netron' do
  version '3.0.9'
  sha256 'df80fdcdf6b3bc6610e4ff5e05476cc9e86fe356b4b27d65acb55049de10ae01'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
