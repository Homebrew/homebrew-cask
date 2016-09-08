cask 'kube-solo' do
  version '0.9.1'
  sha256 'ac9f848f453f42cd18187862c09017976ab4dd67bafe414076a38d4e9adca7d9'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: 'c3aadaa1a51ca05f2dadb428cc51ace03cbb869a86c9fbaf25426073c775c281'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'
  license :apache

  app 'Kube-Solo.app'

  zap delete: '~/kube-solo'
end
