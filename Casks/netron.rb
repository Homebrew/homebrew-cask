cask 'netron' do
  version '3.1.2'
  sha256 'ad3b82075cda1da1f0587179c1ddf06f3b9685eb5d76582fde1929eeca1141fe'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
