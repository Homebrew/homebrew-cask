cask 'netron' do
  version '4.0.3'
  sha256 'a2add65a1e7ab8937e81121072a0a018e218ef23b05be435702e03e7cd9305b6'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
