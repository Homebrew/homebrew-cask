cask 'hab' do
  version '0.23.0-20170511211820'
  sha256 '07e55b7c22aca00ecf42a401da3d61877b21f0de62a717167443c1183f968272'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: 'ee356432ea004183a678811bfd26a2f7e42147f8e92da448483ea650a854ef46'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
