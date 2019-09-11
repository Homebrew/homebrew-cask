cask 'minishift' do
  version '1.34.1'
  sha256 '1d5181b3547f88ef14372cd9c743f3fd3962d7d3ebf2915b8ab8b306af78c97d'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
