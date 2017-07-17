cask 'hab' do
  version '0.26.1-20170715032253'
  sha256 '5835891dbb8f7d5a14c153d182cbfa17cff0c835c0ac90cb7019f893ff694b16'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '591b43b67c430f83edff841178b812c86c1baf9fc6267ae6c05398cf89db1fc2'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
