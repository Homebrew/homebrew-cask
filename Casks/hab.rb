cask 'hab' do
  version '0.7.0-20160614231131'
  sha256 '93fac880261df34c75ac5775c9febb536b82ac955cd6df873bbfec1cf697ed50'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  name 'Habitat'
  homepage 'www.habitat.sh'
  license :apache

  binary "hab-#{version}-x86_64-darwin/hab"
end
