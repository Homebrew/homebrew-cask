cask 'netron' do
  version '2.9.1'
  sha256 '22e3c4b7591b6c99d4d75b55e572039394149f073dddaa4eb418645c9b59f3d2'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
