cask 'hab' do
  version '0.34.0-20170930005624'
  sha256 '239f84aea1307fa986aa8cc906704ae6a2f0f40bfba46c8856084621effdc1ce'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: 'ef81f123f0722ac4a3a18c879ef642d99efb1ca683bf533c2dc4352e4c2451d8'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
