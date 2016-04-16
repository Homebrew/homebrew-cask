cask 'enpass' do
  version '5.2.0'
  sha256 '8f8a9e9a556f790f3fd1354d402718fe60bef593ed7b7bb0bce5e6a085aae1f5'

  # sinew.in was verified as official when first introduced to the cask
  url "http://dl.sinew.in/mac/setup/Enpass-#{version}.dmg"
  name 'Enpass'
  homepage 'https://enpass.io'
  license :gratis

  depends_on macos: '>= :mountain_lion'

  app 'Enpass.app'
end
