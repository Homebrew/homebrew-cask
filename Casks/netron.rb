cask 'netron' do
  version '4.1.6'
  sha256 'b47ede6b2921b21e90e1e86d1e2c9430f6e7f0832aea111b1459c181e205b282'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
