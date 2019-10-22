cask 'netron' do
  version '3.4.6'
  sha256 '646680a4c5c2195bc2a6bb857ca5b75ef308766af1c899669c294f378ee15730'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
