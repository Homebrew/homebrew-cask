cask 'minishift' do
  version '1.14.0'
  sha256 '2a5ed80d2dba9bdcb9b11073142f5da147beb69281fb40bfc74e0a35d90f6f29'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '4b072f62008e29fe2e444d7852558d54205d6159855a9d3c56bea933d3e8da70'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
