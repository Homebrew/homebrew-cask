cask 'kube-solo' do
  version '0.5.8'
  sha256 '8c4f995344ab4dcfa26dde05149aa3b17f30ccb195330b894fdf8d6a1de0ad2a'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: '07408eb4128be011cec274d7b89b78cb3cd56d67ab92eec199b90f94f3a98ecf'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'
  license :apache

  app 'Kube-Solo.app'
end
