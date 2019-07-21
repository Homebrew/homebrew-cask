cask 'minishift' do
  version '1.33.0'
  sha256 'c5b41cb995d2b22fc2ebc045e835f71e4d206035083c16c0fc82bdb08ca4d797'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
