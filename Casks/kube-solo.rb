cask 'kube-solo' do
  version '0.6.6'
  sha256 'aafdf20cc17eee7fcfe6d3758f9282895bb62b4b43c07ed01347184cf7d3e88d'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: 'f09238d409b0a7906c53832a67bd656003fe363c9cf0c54301bdf8e4fbb98ea8'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'
  license :apache

  app 'Kube-Solo.app'

  zap delete: '~/kube-solo'
end
