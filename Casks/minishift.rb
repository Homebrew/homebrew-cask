cask 'minishift' do
  version '1.10.0'
  sha256 '7f4c5cc0f1c7ead530ecc2872346867803144e6cbd8d918217f3e0e35fe96e11'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: 'e75c0d34e934e46230550fa345839aba546da786f025ba44fd30ed19d0bbdbc3'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
