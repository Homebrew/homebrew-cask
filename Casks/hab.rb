cask 'hab' do
  version '0.22.1-20170509231134'
  sha256 'f77cf1d070e1033d2a4360601789a984748b44bdc401cf3849ade36191351e30'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '3f845727f29dc09954bf12df1c0b6be55a56981aeb62d465937480a4e59f9d2e'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
