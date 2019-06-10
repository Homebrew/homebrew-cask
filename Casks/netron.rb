cask 'netron' do
  version '3.1.3'
  sha256 '84aa1f8a2e2579c391619ea3e5b8340bb7ff849530e945ce97a4486ca7e19d5b'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
