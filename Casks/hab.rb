cask 'hab' do
  version '0.23.0-20170511211820'
  sha256 '07e55b7c22aca00ecf42a401da3d61877b21f0de62a717167443c1183f968272'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '70b06a0591bcd5408870ba3a72f88ac43f56fb9d8b1a7afe3cca9486be9b4762'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
