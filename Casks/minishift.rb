cask 'minishift' do
  version '1.6.0'
  sha256 '4ef5be4ed8a45cc7f8c372f17df39e3729953f02c635a8382cf0cff46ab9e7e6'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '42878bff43260d3a6c2b356c61a7e9ce323c8a630f8f2b5451385620d4c5ad81'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary 'minishift'
end
