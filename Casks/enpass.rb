cask 'enpass' do
  version '5.5.6'
  sha256 '3764ee6ef78c302d144c82ee31b0792776f323c67dd91ee345c6b83846326c7c'

  # sinew.in was verified as official when first introduced to the cask
  url "https://dl.sinew.in/mac/setup/Enpass-#{version}.dmg"
  name 'Enpass'
  homepage 'https://www.enpass.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Enpass.app'
end
