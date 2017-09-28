cask 'hab' do
  version '0.33.2-20170925042638'
  sha256 '6d935ebf64b49afe2cf4763cce7d2383af019bfec833c36b7687e0db91aeaffa'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '85520ab7cbdb3c768f27216b6eb27d5de6b3445ffc6c9d3e3d043394d670e770'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
