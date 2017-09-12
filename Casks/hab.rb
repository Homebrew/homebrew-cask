cask 'hab' do
  version '0.31.0-20170907230858'
  sha256 '288ede259050b56946a8ea5479968de8d5373eb9784e8f681a6118d127a2be84'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '552e56f834628b87b9eaa201eb1c47438f5e7c68d19020c501bffa6afc273646'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
