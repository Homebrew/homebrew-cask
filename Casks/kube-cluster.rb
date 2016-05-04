cask 'kube-cluster' do
  version '0.2.4'
  sha256 'b9822b4cfeff7bdc80036620bdc59bd207e90a72bb040aa70694a1c5400c7f20'

  url "https://github.com/TheNewNormal/kube-cluster-osx/releases/download/v#{version}/Kube-Cluster_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-cluster-osx/releases.atom',
          checkpoint: '30ad7d4dd23479855215f48b324b936db270189304f93fe59c7282802dfa1bd6'
  name 'Kube-Cluster'
  homepage 'https://github.com/TheNewNormal/kube-cluster-osx'
  license :apache

  app 'Kube-Cluster.app'
end
