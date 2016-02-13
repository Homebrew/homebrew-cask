cask 'kube-cluster' do
  version '0.1.9'
  sha256 '3616bffc8a553a2dd67ab416f7c067588063cbd4c7a99b5c9aa2fa272a4181b0'

  url "https://github.com/TheNewNormal/kube-cluster-osx/releases/download/v#{version}/Kube-Cluster_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-cluster-osx/releases.atom',
          checkpoint: '9f668b5848cf2191b612a784fb483222ef369624c173a2304c8b151bb0c673ee'
  name 'Kube-Cluster'
  homepage 'https://github.com/TheNewNormal/kube-cluster-osx'
  license :apache

  app 'Kube-Cluster.app'
end
