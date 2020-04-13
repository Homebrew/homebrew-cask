cask 'netron' do
  version '4.0.6'
  sha256 'db176823a8e5db42c7172169be5e25323ca805c5be04009b4128485f428663b1'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
