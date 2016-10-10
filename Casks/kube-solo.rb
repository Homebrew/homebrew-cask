cask 'kube-solo' do
  version '0.9.5'
  sha256 'a6a973453853cd508519447c5a4298a3a7f8293918c5f75b47dc35b23a04a8d5'

  url "https://github.com/TheNewNormal/kube-solo-osx/releases/download/v#{version}/Kube-Solo_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: 'd195600332b68aad2281b634e08bc2552dfb1faa09db7b15bb4486753c9a6fec'
  name 'Kube-Solo'
  homepage 'https://github.com/TheNewNormal/kube-solo-osx'

  app 'Kube-Solo.app'

  zap delete: '~/kube-solo'
end
