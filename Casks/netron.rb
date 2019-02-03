cask 'netron' do
  version '2.8.5'
  sha256 'b5d3510a7a1a1e5a5f4249bdb5d1dbbc6d7eccfca6ee57ea976bae6554c4e591'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
