cask 'minishift' do
  version '1.30.0'
  sha256 '36b8c262c6d78820258be9e968d88fae9856bf73466d29edb6b261447f883760'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
