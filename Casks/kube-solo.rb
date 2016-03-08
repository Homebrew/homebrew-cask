cask 'kube-solo' do
  version '0.5.3'
  sha256 '350a3edb8b017c9652235ddcd4f0980bb13e86f57a9e9ed3578052a9c0b46a15'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: '093cd817680ebabb4ae1d310a3c10010c19962551d9cf646e1c53706803b08de'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'
  license :apache

  app 'Kube-Solo.app'
end
