cask 'hab' do
  version '0.9.1-20160901213157'
  sha256 '760689f49e25f09cc8331b9dc1fdb74b5f24f53176232535a68d4b7e76e23893'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  name 'Habitat'
  homepage 'www.habitat.sh'
  license :apache

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
