cask 'minishift' do
  version '1.19.0'
  sha256 '6b81a8b3eee855895279a5ca0670e3f8c3a4a427d38e4354f3175892f5a5963d'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
