cask 'kube-solo' do
  version '1.0.3'
  sha256 'e0a983fc13cc24055a181238813486456bac33796619ba77f1be710d16a50773'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: '011276cb76066f9e5503493ff92ce386bd4024ac4b825b6c1491c0582484db2f'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'

  app 'Kube-Solo.app'

  zap delete: '~/kube-solo'
end
