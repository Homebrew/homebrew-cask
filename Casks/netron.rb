cask 'netron' do
  version '2.2.2'
  sha256 'ec1596de6fde47a26536a00515a04da88b83b4a813339498d8c938b0c5938dc9'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
