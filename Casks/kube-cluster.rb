cask 'kube-cluster' do
  version '0.2.1'
  sha256 'e9c2f10617feeb6c49d12b65014a5d38396478f96f66c659ad71c284230ebde5'

  url "https://github.com/TheNewNormal/kube-cluster-osx/releases/download/v#{version}/Kube-Cluster_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-cluster-osx/releases.atom',
          checkpoint: '0a2e3e70f57dbc700045ca469c87939e74c40f1fbe0e4d4bb883095e74f8fe2c'
  name 'Kube-Cluster'
  homepage 'https://github.com/TheNewNormal/kube-cluster-osx'
  license :apache

  app 'Kube-Cluster.app'
end
