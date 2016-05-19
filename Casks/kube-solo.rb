cask 'kube-solo' do
  version '0.6.0'
  sha256 '5dc8994dfc76f6a1100b527ede876f78b410f17067a34a9f448f6216f03da552'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: 'a22a34a821e9c1d70ce1dbcaeb5c6a412959db47b37798730937b40e51efe550'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'
  license :apache

  app 'Kube-Solo.app'

  zap delete: '~/kube-solo'
end
