cask 'minishift' do
  version '1.28.0'
  sha256 '31d82cacdee696e85810992788208f82a0339cfca6e4f7c84cccdbe7c315fd3f'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
