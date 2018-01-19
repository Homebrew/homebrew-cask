cask 'hab' do
  version '0.52.0-20180119184453'
  sha256 '60849d39be265c05814d7be93798f9355f49cb4401d499405fdde83f1161c4e4'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '415881ea7c8292f968172a486fab8b9e5036ecbda60a7e6435db37b5d25e03e2'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
