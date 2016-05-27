cask 'kube-solo' do
  version '0.6.2'
  sha256 'f9477950f7365b73704ac8a87e9cdcafe73717eff7feb16fe38cac4e2f7c258d'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: '11ab423dcd94e79e2919ccfc81188a71fc410c5643a2fcc896eade0fbdd4cbf7'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'
  license :apache

  app 'Kube-Solo.app'

  zap delete: '~/kube-solo'
end
