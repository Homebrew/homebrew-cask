cask 'kube-solo-osx' do
  version '0.5.1'
  sha256 'd00509c8256f117cc74b06488efa7d672356f588c7cb92ab882226e477420d27'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: '6eb747fb992f3a99dfc092cb066486ac55aede3571564a39abcb6fa6e1d40b85'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'
  license :apache

  app 'Kube-Solo.app'
end
