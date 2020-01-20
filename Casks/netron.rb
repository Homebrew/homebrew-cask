cask 'netron' do
  version '3.7.9'
  sha256 '3f7bf5b3e734cf671b191382390d009969e4b66abfff8c878a696b2e5cc65072'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
