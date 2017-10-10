cask 'hab' do
  version '0.34.1-20171002011028'
  sha256 'c0ed40914484f7cdcb2ff12cd5369ec23a262ce8c165185e037bbb4e33b69781'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: 'a4156b9c996e66c337db61e8836b751ae921bafeccb81738009cd8ddf7d448f0'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
