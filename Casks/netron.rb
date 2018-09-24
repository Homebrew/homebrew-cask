cask 'netron' do
  version '2.1.7'
  sha256 '1dcd98004bfa4ee7cb5703a46017dfe6b400cc18deef82e0a3fe05750dc90984'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
