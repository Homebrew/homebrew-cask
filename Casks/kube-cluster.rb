cask 'kube-cluster' do
  version '0.2.6'
  sha256 'b959baa8577a01fa637f524eb2f95e80fe49e60c3e4abfb98d75b823815cc1a5'

  url "https://github.com/TheNewNormal/kube-cluster-osx/releases/download/v#{version}/Kube-Cluster_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-cluster-osx/releases.atom',
          checkpoint: '72eadab6b8a706ce13ff74385cc620802526ed036d74ec7039b2b284d6e558d8'
  name 'Kube-Cluster'
  homepage 'https://github.com/TheNewNormal/kube-cluster-osx'
  license :apache

  app 'Kube-Cluster.app'

  zap delete: '~/kube-cluster'
end
