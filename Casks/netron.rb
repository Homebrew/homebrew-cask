cask 'netron' do
  version '3.0.2'
  sha256 '7a04dfe49193719fd2190ec5a6d5302f9cf671074dfc323ab6ff0c2476f58b26'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
