cask 'kube-cluster' do
  version '0.3.5'
  sha256 '0111e82441b0d2db8ba9b812cc09957b127bdba8efaa66c26ee1a131bec2298f'

  url "https://github.com/TheNewNormal/kube-cluster-osx/releases/download/v#{version}/Kube-Cluster_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/kube-cluster-osx/releases.atom',
          checkpoint: '48e4fe84467716e5395eaf9de30e212ecfb85225906174396e7be5039fa68073'
  name 'Kube-Cluster'
  homepage 'https://github.com/TheNewNormal/kube-cluster-osx'
  license :apache

  app 'Kube-Cluster.app'

  zap delete: '~/kube-cluster'
end
