cask 'enpass' do
  version '5.0.3'
  sha256 '7d3e611bbe62dfd0b70e704cebe73158718bedb5f7bce1b0a5fc5901edaded22'

  # sinew.in was verified as official when first introduced to the cask
  url "http://dl.sinew.in/mac/setup/Enpass-#{version}.dmg"
  name 'Enpass'
  homepage 'https://enpass.io'
  license :gratis

  depends_on macos: '>= :mountain_lion'

  app 'Enpass.app'
end
