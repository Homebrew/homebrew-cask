cask 'hab' do
  version '0.36.0-20171009050124'
  sha256 '3c4ca43b1206c56cd61e4bb22d7659913528378b7b5a1d192105318887a77e86'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '713909977879a74f58f72233fd2aa060a5ef1975fb01c54996754a8bf72d1654'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
