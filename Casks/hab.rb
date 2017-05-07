cask 'hab' do
  version '0.22.0-20170506033930'
  sha256 '3dd7524ab546e1f6fcb68f289d780c7085dd146c3f5901d336f767e78272d19d'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: 'e5813ce6a0e5195f9c663aaac314c68734427a71edaf953c17d4d93db68185db'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
