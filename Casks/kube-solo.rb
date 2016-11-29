cask 'kube-solo' do
  version '1.0.0'
  sha256 '7398356d1fe4b8618cb9bad410ef1f09c7c73d59886063bb42b15702f591bf0d'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: '3b91b6354a3c4293c350e2ec3b0ae19bdc95ddc37018a4f88813be1b5107a1ce'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'

  app 'Kube-Solo.app'

  zap delete: '~/kube-solo'
end
