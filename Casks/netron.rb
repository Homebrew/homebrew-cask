cask 'netron' do
  version '2.0.2'
  sha256 '5c4c2ec1ec13d43043f7dc922946dab17b65580bfd0be00e47251a2c686a2255'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
