cask 'kube-cluster' do
  version '0.5.1'
  sha256 '7f046d043a2371a552cdc8ee37bd15518c764eecce65ab5647e3732898049d17'

  url "https://github.com/TheNewNormal/kube-cluster-osx/releases/download/v#{version}/Kube-Cluster_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-cluster-osx/releases.atom',
          checkpoint: 'cc48edd6ed762e3645dc73ff720a070af067ba12f6db91a15989c3eae3d33712'
  name 'Kube-Cluster'
  homepage 'https://github.com/TheNewNormal/kube-cluster-osx'

  app 'Kube-Cluster.app'

  zap delete: '~/kube-cluster'
end
