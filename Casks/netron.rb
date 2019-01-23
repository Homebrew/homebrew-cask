cask 'netron' do
  version '2.8.4'
  sha256 'd8ac83f3027d247361aa08e95f2065cba161d8a0c1260da889aa9c6eaab8fe1c'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
