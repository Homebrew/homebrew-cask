cask 'hab' do
  version '0.50.3-20171201233208'
  sha256 '5311d0d80df04179e6dd98a5caa6eff6e9580a01eec9a0904d6836d03fc47f5a'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: 'c0be8b9df2ae5bf0f05f0a8c70aeacb4f5f4d21060af4d1ed46d042fee5fcf86'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
