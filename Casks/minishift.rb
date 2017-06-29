cask 'minishift' do
  version '1.2.0'
  sha256 '686f0ceee33118612d6f4a8b42e797ab1ffa8dddd35ea30efe639e3c369e6ab0'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '8dac7ac65ad19b67bd6f54a087199043f3438855c02f21e260fdfbda54bc6012'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary 'minishift'
end
