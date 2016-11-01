cask 'hab' do
  version '0.12.0-20161031220814'
  sha256 '025cd9e1bb2ca6813b8046c1c218025f6e9f6f3ca07d81ea1654aa60849fab45'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  name 'Habitat'
  homepage 'https://www.habitat.sh'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
