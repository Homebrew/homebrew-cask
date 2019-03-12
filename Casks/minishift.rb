cask 'minishift' do
  version '1.32.0'
  sha256 'aac7cf70e13ffd39fa2821b105bb817a2edd802383627f9775de156a87aec4ec'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
