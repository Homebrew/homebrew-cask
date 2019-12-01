cask 'netron' do
  version '3.5.8'
  sha256 '7fe83b28b93bad658eca744eadb55e80cda392c659aa42865138a6d2d34545b9'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
