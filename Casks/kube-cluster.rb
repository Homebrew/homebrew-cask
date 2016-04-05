cask 'kube-cluster' do
  version '0.2.3'
  sha256 'f2f5c6bfbb83f74e1c7fd49501244dd053c962242fb30fa6d5b41e2dc536747e'

  url "https://github.com/TheNewNormal/kube-cluster-osx/releases/download/v#{version}/Kube-Cluster_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-cluster-osx/releases.atom',
          checkpoint: 'af74e72dbd93ac02671c63fd829d4e768281a865d42e343656097ff39c6d9509'
  name 'Kube-Cluster'
  homepage 'https://github.com/TheNewNormal/kube-cluster-osx'
  license :apache

  app 'Kube-Cluster.app'
end
