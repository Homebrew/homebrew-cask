cask 'minishift' do
  version '1.13.1'
  sha256 'cfe006bcd1da0c4c119d25949cea368bb1055c520fbfc470623caf01860b6284'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '9732bb60963d6d6b26299ffd6e1430e4e8b7d5969c5782f0418ef09f602d7a0e'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
