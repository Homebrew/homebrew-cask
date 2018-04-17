cask 'hab' do
  version '0.54.0-20180221020527'
  sha256 '3eb8f6e1f8145bad9edf1ceceafd7a97a10d1cab78e6c7ebec6b05e2b5e36fe7'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: 'dc64e5193123de97efd533e8af931faccd4a74f50068074e03a455d629032fdb'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
