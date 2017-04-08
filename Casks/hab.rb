cask 'hab' do
  version '0.20.0-20170407015129'
  sha256 '38925f5a870ac91661738b0223fa152269ede86abcfa3d9999bf9bcdac3081c7'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '131c5340e019175e9ada6375f178ed0735ff037b0eaca873e64814efa7b14ea4'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
