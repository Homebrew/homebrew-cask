cask 'kube-cluster' do
  version '0.1.8'
  sha256 'e15105317cf138f47716108212d4ffba1ae6a48088d345dc67ea20d159c13efa'

  url "https://github.com/TheNewNormal/kube-cluster-osx/releases/download/v#{version}/Kube-Cluster_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-cluster-osx/releases.atom',
          checkpoint: '9f668b5848cf2191b612a784fb483222ef369624c173a2304c8b151bb0c673ee'
  name 'Kube-Cluster'
  homepage 'https://github.com/TheNewNormal/kube-cluster-osx'
  license :apache

  app 'Kube-Cluster.app'
end
