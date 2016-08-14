cask 'kube-cluster' do
  version '0.4.9'
  sha256 '093a5983832349f3c148b4bf1a61d2be8e5d512ddf028b178c4956a0fd2b002a'

  url "https://github.com/TheNewNormal/kube-cluster-osx/releases/download/v#{version}/Kube-Cluster_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-cluster-osx/releases.atom',
          checkpoint: 'b5bf231b860bea02970c783c43cb7cfda14fa3b4f4a1e4118a606a911f2106ea'
  name 'Kube-Cluster'
  homepage 'https://github.com/TheNewNormal/kube-cluster-osx'
  license :apache

  app 'Kube-Cluster.app'

  zap delete: '~/kube-cluster'
end
