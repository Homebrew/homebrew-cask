cask 'kube-solo' do
  version '0.5.2'
  sha256 '37197be2fcf1b82516c4a9430d8147b985107977e81c579e7f924276dfe67c33'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: '3c247fdef0a9eeb3bc012d0ed61a01a69c0040adc83dfa85a42a73539ba9c95f'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'
  license :apache

  app 'Kube-Solo.app'
end
