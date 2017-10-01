cask 'espresso' do
  version '5.0.3'
  sha256 '462a57b2364764f15b62da95cab24633cb59b3dca1c4f05ac6ad85701372dda4'

  # static.macrabbit.com was verified as official when first introduced to the cask
  url "https://static.macrabbit.com/downloads/Espresso%20v#{version.major}.zip"
  appcast "https://update.macrabbit.com/espresso/#{version}.xml",
          checkpoint: '1a136a83d4663679501479c433d99ad45e8284a1f5296701686e974d357fa143'
  name 'Espresso'
  homepage 'https://espressoapp.com/'

  depends_on macos: '>= :sierra'

  app 'Espresso.app'
end
