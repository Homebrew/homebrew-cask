cask 'minishift' do
  version '1.18.0'
  sha256 '7d8104c3244b0477ee4873670be9264fd89659b2af1c127540a97943856a96a5'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '68bca4da23ce69a66239f60f773a30dcbb78ed88728cdcb7c480394e15112998'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
