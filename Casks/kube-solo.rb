cask 'kube-solo' do
  version '0.5.2'
  sha256 '37197be2fcf1b82516c4a9430d8147b985107977e81c579e7f924276dfe67c33'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: '8144852c33d886de52d57e282106f175d44414e53bc11e0735dfe991d19f8f27'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'
  license :apache

  app 'Kube-Solo.app'
end
