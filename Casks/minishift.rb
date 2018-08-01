cask 'minishift' do
  version '1.22.0'
  sha256 '8c2938db8cacfc3042aebfe429587f7f99247828d7cf83805c07fb3ba1d427f7'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
