cask 'kube-solo' do
  version '0.5.5'
  sha256 '3607c968b4346b6cd37f1c0b6ba704201d67b2ef19b498d025eb8d8af68427c0'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: '47fe202fa31dab6210936761d2fd4ed68b9f2fea85f047e1103caba9e44879f6'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'
  license :apache

  app 'Kube-Solo.app'
end
