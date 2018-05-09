cask 'minishift' do
  version '1.17.0'
  sha256 'fb2c5d2ce2c59e81a2ac33a13e6ec527c482f9ad3776d2aad644a679949fcc20'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: 'c8f4d71d08655894d1b712f251d3dbb0063e8d78236bbd9502b6cd96c2570f89'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
