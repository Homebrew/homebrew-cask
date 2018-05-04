cask 'minishift' do
  version '1.16.1'
  sha256 'c8783645a6d9d1648c05db0b66c90edb6deceeab6a46bb739f4a238293d2df93'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '3ba890792787f72e85146543e593e305eac74492ef803010ca1e22e594ee5087'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
