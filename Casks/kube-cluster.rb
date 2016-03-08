cask 'kube-cluster' do
  version '0.2.0'
  sha256 '44f7456a5a1bb004e2b4ae6694c3758df3f5ac748d6bf5e6f22a7914a3670ee7'

  url "https://github.com/TheNewNormal/kube-cluster-osx/releases/download/v#{version}/Kube-Cluster_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-cluster-osx/releases.atom',
          checkpoint: '113ada88eaf58bcf9f988b5702d686a10e06b891d6af5adf953ccce54d26a48a'
  name 'Kube-Cluster'
  homepage 'https://github.com/TheNewNormal/kube-cluster-osx'
  license :apache

  app 'Kube-Cluster.app'
end
