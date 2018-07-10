cask 'minishift' do
  version '1.21.0'
  sha256 'bb60c9799648aec7994bfff4085a5e9ab04bad4d06926e3cd3d01aa32ada1515'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
