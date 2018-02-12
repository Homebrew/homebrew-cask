cask 'minishift' do
  version '1.13.0'
  sha256 '2ae2d05aabe3b8adf7add5cab51e53a3a3634bf87492a2dcf312efdf217b7339'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '59b745b38eec4777a1689e76345dd24547306a6dc8fd08ec35a75cdf2499774b'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
