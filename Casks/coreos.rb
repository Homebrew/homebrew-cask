cask 'coreos' do
  version '1.2.5'
  sha256 '80643deab5dabdb89b312def48beb97f72160163f8b23e9d969c2640d36cc961'

  url "https://github.com/TheNewNormal/coreos-osx/releases/download/v#{version}/CoreOS_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/coreos-osx/releases.atom',
          checkpoint: '3a4d0db68c5e771c51254919040fd4908904f23b3f7a68e1bedc2bee05087a99'
  name 'CoreOS VM'
  homepage 'https://github.com/TheNewNormal/coreos-osx'
  license :apache

  app 'CoreOS.app'
end
