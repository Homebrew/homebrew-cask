cask 'kube-solo' do
  version '0.9.6'
  sha256 '636e92a576659245b898c4483737b69c87834ce7a310cbb0a408cc1b97a7212e'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: 'fea5dc30e91da302bd88f2df73eaf85122f804dda29c9cd468eb843bac467d5d'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'

  app 'Kube-Solo.app'

  zap delete: '~/kube-solo'
end
