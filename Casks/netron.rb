cask 'netron' do
  version '3.2.4'
  sha256 '57a2dbbf9a0ac2e79fae7417e505501498ec4e551cf29dc8bf7219ca05cc9c46'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
