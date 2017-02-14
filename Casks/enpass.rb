cask 'enpass' do
  version '5.4.1'
  sha256 'e634a2bb12f7b4152e92fa5e9a9d6f9902be62afe7e0c54c768119bf64b5413f'

  # sinew.in was verified as official when first introduced to the cask
  url "https://dl.sinew.in/mac/setup/Enpass-#{version}.dmg"
  name 'Enpass'
  homepage 'https://www.enpass.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Enpass.app'
end
