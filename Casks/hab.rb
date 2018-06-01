cask 'hab' do
  version '0.56.0-20180530234342'
  sha256 'e75755f806d870592adba82e61eecdd8478c3c37c66c67d4901da94feb9dad0e'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '5d1db46cb2ddffafaa84dfce064d494d61417c844f2ffd49f52dcde519514bc8'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
