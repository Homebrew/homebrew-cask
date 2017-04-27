cask 'hab' do
  version '0.21.0-20170421000356'
  sha256 '2eaef5b747411e96148f03a9fde8d3689ebb15b7298370cd88e7b4a2fc049502'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '2f2e308774833bd6100b626bb92cb588dadac73a97f91aa3da0f11294329dc1c'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
