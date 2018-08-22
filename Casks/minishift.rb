cask 'minishift' do
  version '1.23.0'
  sha256 '2e1e51fc115cd3dbd295430a8a47e4245ab39706505aba7f2f42e525de4e7a74'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
