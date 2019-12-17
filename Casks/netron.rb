cask 'netron' do
  version '3.6.3'
  sha256 '2ea0261ae20137a54430bb0deae8a960d8a6e534867b356f0053af8e04fe5fbb'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
