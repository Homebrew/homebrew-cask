cask 'netron' do
  version '4.0.4'
  sha256 '060b80501134b3a92fcf157aea8ece781ae407cb2c2aa1ea8b01445313c5707c'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
