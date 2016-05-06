cask 'enpass' do
  version '5.2.1'
  sha256 'e396df7c7a3cce99fbb37fe0912317449827d0085a1523b5b65b4b62ff002ced'

  # sinew.in was verified as official when first introduced to the cask
  url "http://dl.sinew.in/mac/setup/Enpass-#{version}.dmg"
  name 'Enpass'
  homepage 'https://enpass.io'
  license :gratis

  depends_on macos: '>= :mountain_lion'

  app 'Enpass.app'
end
