cask 'kube-solo' do
  version '0.5.7'
  sha256 'e8b4dac67b873a9722cbe89ceb14a036e79569bc243cf251ce18476afbe5d5e8'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: '5de84b2d1fd2e430503060e563d12f09db6e27a0291b93d033a2a21af915fdb7'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'
  license :apache

  app 'Kube-Solo.app'
end
