cask 'minishift' do
  version '1.24.0'
  sha256 'a55f25ca109a1c21f7c187060ed0a65457456400d6a1f63fb9a7892f87792a68'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
