cask 'netron' do
  version '3.3.4'
  sha256 'a901fd42f50d2c62bad5a324740f706f3f056489c71d489581f42b581cbba894'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
