cask 'hab' do
  version '0.18.0-20170302204108'
  sha256 '115cb6bb52875a8232c1249b00f628f9786fca5ba5f92f1b9ed9edd412a104da'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: 'c002f642118d263ed1188f9b8a6762e83772dd3fe8794b2cb44ee6efd420635d'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
