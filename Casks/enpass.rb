cask 'enpass' do
  version '5.5.4'
  sha256 '43f774acbd23f8e079abf8da9dcf6639b559fc59c84e7915fca9e0a7a86edaa9'

  # sinew.in was verified as official when first introduced to the cask
  url "https://dl.sinew.in/mac/setup/Enpass-#{version}.dmg"
  name 'Enpass'
  homepage 'https://www.enpass.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Enpass.app'
end
