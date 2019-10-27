cask 'netron' do
  version '3.4.7'
  sha256 '19266368953915d894f102c7466d7c28c5bda4ae791998084da82bd80a3b39f7'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
