cask 'kube-cluster' do
  version '0.5.3'
  sha256 'a19384f36a215af485f6ca2761091feaf7b6e3825a4f19845bd627c82c4d4083'

  url "https://github.com/TheNewNormal/kube-cluster-osx/releases/download/v#{version}/Kube-Cluster_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-cluster-osx/releases.atom',
          checkpoint: 'ef4bf984c711141c7db3b433e716aa9f0bd41069463cbe174ffbe22f4fecf227'
  name 'Kube-Cluster'
  homepage 'https://github.com/TheNewNormal/kube-cluster-osx'

  app 'Kube-Cluster.app'

  zap trash: '~/kube-cluster'
end
