cask 'hab' do
  version '0.17.0-20170215010822'
  sha256 '84a6c93445fc581263b32c2cc6c638d8fb4331dd7e0afe3114f919e0d34a3ec8'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '718bbe97df31849eea3df95c9b6fe09528530e1144dd2b84bae7266a4355e215'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
