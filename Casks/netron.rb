cask 'netron' do
  version '3.4.5'
  sha256 '458c1fdaa8a367176ece88ce34ebc1f805a91ad74680498c2d2e7777a79fc15a'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
