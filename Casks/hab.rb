cask 'hab' do
  version '0.9.0-20160816000307'
  sha256 '712da300f8c5679321cc5a6f5b0c69bcea0386f301c16cce2033873a9fad2f17'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  name 'Habitat'
  homepage 'www.habitat.sh'
  license :apache

  binary "hab-#{version}-x86_64-darwin/hab"
end
