cask 'kube-solo' do
  version '0.6.3'
  sha256 '3b9ced3e21b82a0982acb4258263083b6441cf30179377ed7a95d57bab2320b9'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: '129a51caa8e617adbc554fc2f7140facf7b44691103debea7341316243f0421d'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'
  license :apache

  app 'Kube-Solo.app'

  zap delete: '~/kube-solo'
end
