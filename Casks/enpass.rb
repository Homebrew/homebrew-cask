cask 'enpass' do
  version '5.5.5'
  sha256 'ad5fe4ce337130d0eabb00bcbc47f86d127397622919c6fcb86655e5b67e4b98'

  # sinew.in was verified as official when first introduced to the cask
  url "https://dl.sinew.in/mac/setup/Enpass-#{version}.dmg"
  name 'Enpass'
  homepage 'https://www.enpass.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Enpass.app'
end
