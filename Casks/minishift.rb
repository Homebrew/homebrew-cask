cask 'minishift' do
  version '1.31.0'
  sha256 'f1a752ebb225d85d813ad7c44e34545d56c53e01aad817f8223a51ee95004f9c'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
