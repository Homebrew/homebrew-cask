cask 'espresso' do
  version '5.0.1'
  sha256 '462a57b2364764f15b62da95cab24633cb59b3dca1c4f05ac6ad85701372dda4'

  # static.macrabbit.com was verified as official when first introduced to the cask
  url "https://static.macrabbit.com/downloads/Espresso%20v#{version.major}.zip"
  appcast "https://update.macrabbit.com/espresso/#{version}.xml",
          checkpoint: '15bb98f284a0b4171c89b16254c77d2f4d9df7989ed0725cc0911153c155f615'
  name 'Espresso'
  homepage 'https://espressoapp.com/'

  depends_on macos: '>= :sierra'

  app 'Espresso.app'
end
