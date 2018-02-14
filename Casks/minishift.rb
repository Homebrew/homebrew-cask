cask 'minishift' do
  version '1.13.0'
  sha256 '2ae2d05aabe3b8adf7add5cab51e53a3a3634bf87492a2dcf312efdf217b7339'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '9732bb60963d6d6b26299ffd6e1430e4e8b7d5969c5782f0418ef09f602d7a0e'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
