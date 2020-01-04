cask 'netron' do
  version '3.7.3'
  sha256 '92cb27d1d7ed0db4be26fc5b4964611be324c4c5da14c70bbc675590d6321a6e'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
