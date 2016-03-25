cask 'enpass' do
  version '5.0.3'
  sha256 '36eca6011870a74f032430c48b46d5f85c15a00c4f716c9d2d98275dd286d26d'

  # sinew.in was verified as official when first introduced to the cask
  url "http://dl.sinew.in/mac/setup/Enpass-#{version}.dmg"
  name 'Enpass'
  homepage 'https://enpass.io'
  license :gratis

  depends_on macos: '>= :mountain_lion'

  app 'Enpass.app'
end
