cask 'minishift' do
  version '1.26.1'
  sha256 'f991309a496695d064102b2cab74d738a9ffc3db8dee8efda556939cbb3ce88c'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
