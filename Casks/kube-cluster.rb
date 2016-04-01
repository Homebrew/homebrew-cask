cask 'kube-cluster' do
  version '0.2.2'
  sha256 'b596f64d071e20b638b1184c34043f9eb84a3234096a661207cf4fdb665b53fe'

  url "https://github.com/TheNewNormal/kube-cluster-osx/releases/download/v#{version}/Kube-Cluster_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-cluster-osx/releases.atom',
          checkpoint: '9ef367332e363701b4c26ff64403364456e2eecf3b0eeeb4fe49d4a9d0538314'
  name 'Kube-Cluster'
  homepage 'https://github.com/TheNewNormal/kube-cluster-osx'
  license :apache

  app 'Kube-Cluster.app'
end
