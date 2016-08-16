cask 'kube-solo' do
  version '0.9.0'
  sha256 '5fdd458aef5bbbcd9ffc9ce72220fca5a35bdd078125965a2e0a3541106823d3'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: 'd166619552fac92313ae5dfb7247f133ea954c1be0fbb43c2a12abb852adc79a'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'
  license :apache

  app 'Kube-Solo.app'

  zap delete: '~/kube-solo'
end
