cask 'minishift' do
  version '1.12.0'
  sha256 '3d7b568eea406c47a04e3c2a3f166cf83104ce6a33546138e9082d6b637c8cea'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: 'b9e5fb57c788bd63e179922678d713d8ef2267b6477c8cc6d4cadc2d27a76161'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
