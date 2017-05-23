cask 'hab' do
  version '0.24.1-20170522075711'
  sha256 '8bdab4e58decfe42ad5170ba0b0d8dc9cb482a9306f752790eeeec857184b786'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: 'cc5d983ced8070064836cac42b9fd37b153f4f57cd1dc28016eca203971c30a1'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
