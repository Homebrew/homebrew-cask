cask 'netron' do
  version '4.2.7'
  sha256 '615e66ed6329a268cb2a0218e95f3ac8c6da5f16d68b24893f08d26e9f48c58e'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
