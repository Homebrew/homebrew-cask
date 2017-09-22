cask 'hab' do
  version '0.32.0-20170918223140'
  sha256 '32964ccc509e48adcd0dbec277ddd2d634d0403a69e9acec853ebe07ed083f80'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: 'd7baca35418c6692a01d31c0ff96130a2bda926603a3ee5fd0cfdab5568d808a'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
