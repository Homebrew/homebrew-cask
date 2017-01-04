cask 'kube-solo' do
  version '1.0.2'
  sha256 '45ae4a7db49f93ccb3bdab867040222d8336055a49870caef7284ee5a84942b9'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: '83222681d5bea76ba90f0906b5670d5dde67ce2d9728e9513cccdc509d09d515'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'

  app 'Kube-Solo.app'

  zap delete: '~/kube-solo'
end
