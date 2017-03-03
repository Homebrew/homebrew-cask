cask 'hab' do
  version '0.17.0-20170215010822'
  sha256 '84a6c93445fc581263b32c2cc6c638d8fb4331dd7e0afe3114f919e0d34a3ec8'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: 'c002f642118d263ed1188f9b8a6762e83772dd3fe8794b2cb44ee6efd420635d'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
