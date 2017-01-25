cask 'hab' do
  version '0.16.0-20170119214652'
  sha256 '81ac7209aca4573629a4c0e2ce73ff7fd93217c09b57ec9ef60b0edc323b8ca2'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: 'eb6c98ff47cb2d9629a1a5dd4b862c8fdd99dbabccd37d2cb6151c4058e75457'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
