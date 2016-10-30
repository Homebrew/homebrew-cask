cask 'kube-solo' do
  version '0.9.8'
  sha256 'e5968f86eb1b69da9e76d7ddb9cc62be8c1dbc7dccdbfbbf8c3bdcef3176677d'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: '9ce26e1091c49f9cbbe27adb3cb36145eb3ee94918d6941b1eabeb78fedce422'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'

  app 'Kube-Solo.app'

  zap delete: '~/kube-solo'
end
