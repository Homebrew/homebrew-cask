cask 'netron' do
  version '3.3.8'
  sha256 '45f792144060980a1f98f0a1ff6422fe06204ef6c90cf503b417a41481e50fd2'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
