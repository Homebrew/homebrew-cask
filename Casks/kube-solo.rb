cask 'kube-solo' do
  version '0.5.4'
  sha256 'beba11d1b9f3a083911089c364dd1052cf1340ffa97da048b6321c8ef7a0f1ce'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: '448c94409d6841d5541ad528a5c797a23f2f8623ac7122eb4363f43e5225045b'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'
  license :apache

  app 'Kube-Solo.app'
end
