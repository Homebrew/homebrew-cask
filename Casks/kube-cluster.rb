cask 'kube-cluster' do
  version '0.2.9'
  sha256 '8d9faabcef5422fb5e3f2ab6701d3897049dbf90dfbca0e4b206f767476ac894'

  url "https://github.com/TheNewNormal/kube-cluster-osx/releases/download/v#{version}/Kube-Cluster_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-cluster-osx/releases.atom',
          checkpoint: '5f847b18b166d61b36d8dd14279fb50d84b54873690c2ce878eaad7f425d668a'
  name 'Kube-Cluster'
  homepage 'https://github.com/TheNewNormal/kube-cluster-osx'
  license :apache

  app 'Kube-Cluster.app'

  zap delete: '~/kube-cluster'
end
