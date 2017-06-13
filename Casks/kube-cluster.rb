cask 'kube-cluster' do
  version '0.5.3'
  sha256 'a19384f36a215af485f6ca2761091feaf7b6e3825a4f19845bd627c82c4d4083'

  url "https://github.com/TheNewNormal/kube-cluster-osx/releases/download/v#{version}/Kube-Cluster_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-cluster-osx/releases.atom',
          checkpoint: '12142417fce52c3258b14094dd17f96d259c33e2f7250f207196e2db241c2f4c'
  name 'Kube-Cluster'
  homepage 'https://github.com/TheNewNormal/kube-cluster-osx'

  app 'Kube-Cluster.app'

  zap delete: '~/kube-cluster'
end
