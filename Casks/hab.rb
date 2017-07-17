cask 'hab' do
  version '0.25.1-20170708003355'
  sha256 'c015ff55d00a9de0a20e3b24b121925656ae7a724b4afc44633df988e6875ffc'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '591b43b67c430f83edff841178b812c86c1baf9fc6267ae6c05398cf89db1fc2'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
