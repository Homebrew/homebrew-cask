cask 'minishift' do
  version '1.25.0'
  sha256 '1f185499f01132daa37480035782f4e1a4d944fe2d2fc159cd6c266861b089b4'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
