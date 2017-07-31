cask 'hab' do
  version '0.28.0-20170729010833'
  sha256 '536f531be330e5011b08648f88c2f7afaeaa3cdfa98f169e0e0ac881f30cd02a'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '32276538b3f7d50035d5430caa521b19ea6a8d955644da8f9b2dc8852a2d806f'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
