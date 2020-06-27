cask 'netron' do
  version '4.3.6'
  sha256 '07cf39524f956359a91c5ddf9ac344f35affe36ded685f554b178e13508918e1'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
