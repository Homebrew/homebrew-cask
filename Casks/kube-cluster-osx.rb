cask 'kube-cluster-osx' do
  version '0.1.7'
  sha256 '6f49f6d245ea3ce079ef6d05b4da11d9ce12f931eabce7fb76ae173a2eab50b2'

  url "https://github.com/TheNewNormal/kube-cluster-osx/releases/download/v#{version}/Kube-Cluster_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-solo-osx/releases.atom',
          checkpoint: 'fbb812d1e79b0647b13beebc76bf01e44dac0b21f9c65ac4dc65acf75ce914be'
  name 'Kube-Cluster'
  homepage 'https://github.com/TheNewNormal/kube-cluster-osx'
  license :apache

  app 'Kube-Cluster.app'
end
