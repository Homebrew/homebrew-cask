cask 'netron' do
  version '2.2.8'
  sha256 'acef3156d0e30c119c6ab4aedf42d42168116b677e5ae663ded070c94db7f2b4'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
