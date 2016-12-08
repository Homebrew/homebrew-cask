cask 'kube-cluster' do
  version '0.5.3'
  sha256 'a19384f36a215af485f6ca2761091feaf7b6e3825a4f19845bd627c82c4d4083'

  url "https://github.com/TheNewNormal/kube-cluster-osx/releases/download/v#{version}/Kube-Cluster_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-cluster-osx/releases.atom',
          checkpoint: '5bc6824a2043fe62cf5c44b4959f38f2aabb7f159213b7e8d0040c76250901c7'
  name 'Kube-Cluster'
  homepage 'https://github.com/TheNewNormal/kube-cluster-osx'

  app 'Kube-Cluster.app'

  zap delete: '~/kube-cluster'
end
