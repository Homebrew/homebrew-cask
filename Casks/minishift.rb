cask 'minishift' do
  version '1.8.0'
  sha256 'bd5b2a7c6ab05ee6252940c50d531724aeddc9dd540a4c03e7b4b314fe30e2a0'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: 'ccabbde35d10635e1316dd040ddb67e23ad2e42cbbd58808af7e0ea1654cbbd5'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
