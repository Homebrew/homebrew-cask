cask 'kube-cluster' do
  version '0.5.2'
  sha256 'ccce60b70061bcf69bb9157df5cfa3c2511cbeca92d96143aa754a81b30e4198'

  url "https://github.com/TheNewNormal/kube-cluster-osx/releases/download/v#{version}/Kube-Cluster_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-cluster-osx/releases.atom',
          checkpoint: '20c656cac778020dcbee2a44c1a392cde990bc7a3445faa522ec0c33a72faa3e'
  name 'Kube-Cluster'
  homepage 'https://github.com/TheNewNormal/kube-cluster-osx'

  app 'Kube-Cluster.app'

  zap delete: '~/kube-cluster'
end
