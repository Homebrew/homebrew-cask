cask 'kube-cluster' do
  version '0.2.5'
  sha256 '478f4f9b7d21510d0754282628c23c90c3a8991e8f80c66609302bbc18ed182d'

  url "https://github.com/TheNewNormal/kube-cluster-osx/releases/download/v#{version}/Kube-Cluster_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-cluster-osx/releases.atom',
          checkpoint: 'c39ada164152288db5e78598a2fe2c6e55a305bfe71311b94a7cdbe82a83b775'
  name 'Kube-Cluster'
  homepage 'https://github.com/TheNewNormal/kube-cluster-osx'
  license :apache

  app 'Kube-Cluster.app'

  zap delete: '~/kube-cluster'
end
