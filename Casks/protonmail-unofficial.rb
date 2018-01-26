cask 'protonmail-unofficial' do
  version '0.5.2'
  sha256 '68049f1870461b0ad9df5840284837ce110afd094e943e76ac0bfbffaf267903'

  url "https://github.com/protonmail-desktop/application/releases/download/v#{version}/protonmail-desktop-#{version}.dmg"
  appcast 'https://github.com/protonmail-desktop/application/releases.atom',
          checkpoint: '35075ef1c1e48b4dab2188a1d01b9bf2da8a99d06b1fe79d31a02246b7a32abe'
  name 'Protonmail Desktop'
  homepage 'https://github.com/protonmail-desktop/application'

  app 'Protonmail Desktop.app'
end
