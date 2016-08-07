cask 'hab' do
  version '0.8.0-20160708205701'
  sha256 '0641a60618a5944a4b0952a1f10aefe0bb344bcd044600f9df25ab5dfe301f66'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  name 'Habitat'
  homepage 'www.habitat.sh'
  license :apache

  binary "hab-#{version}-x86_64-darwin/hab"
end
