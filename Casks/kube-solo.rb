cask 'kube-solo' do
  version '1.0.1'
  sha256 '5a923e797499fdc30f0079143b5e195fdd8a5be477f311649eb12a7cd41c75c7'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: 'db1bb4c69167b16cdbfaae7f2e2a87c60e6e9e0da02499ad1598f6ad2ba920cd'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'

  app 'Kube-Solo.app'

  zap delete: '~/kube-solo'
end
