cask 'hab' do
  version '0.15.0-20161222215311'
  sha256 'bf7066ef3a059b8d11099f7ef133d3123c4a0b0a1c1e40c18d2f99ac0cf74491'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: 'd1a116c68f18a5af0735c9a7d2651e0225ccec6751446841cd9a66ad26799afd'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
