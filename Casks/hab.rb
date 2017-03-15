cask 'hab' do
  version '0.19.0-20170311030920'
  sha256 '81f86f83fc523fb4d666cd38ee1bd105874e10d078d219bd9042da58472e1758'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '24a0e5817e279933c2b956c8ff38e9d25203ea1fa7fb8210d2c10d847a84909f'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
