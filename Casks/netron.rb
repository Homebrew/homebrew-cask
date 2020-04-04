cask 'netron' do
  version '4.0.2'
  sha256 'c67d74b4c9aa3f97fcae0beac73fef05de14a3c4c3b2eb74153cf4adfd39d2dc'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
