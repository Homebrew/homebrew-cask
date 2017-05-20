cask 'hab' do
  version '0.24.0-20170519202549'
  sha256 '3c1bc6fd18ac12caffedca88dbda4765459ebc83f5b7e543e83a0cacd4c55f45'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '39ccfe8ccb72f752e1ca8d6e7ec995c2e347ba80334ef10388414f6c79a1101a'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
