cask 'espresso' do
  version '5.0.2'
  sha256 '462a57b2364764f15b62da95cab24633cb59b3dca1c4f05ac6ad85701372dda4'

  # static.macrabbit.com was verified as official when first introduced to the cask
  url "https://static.macrabbit.com/downloads/Espresso%20v#{version.major}.zip"
  appcast "https://update.macrabbit.com/espresso/#{version}.xml",
          checkpoint: 'bce000fa6fee673d2df9c3e73b096ee8e45e832d79e3d7b698506181d946db48'
  name 'Espresso'
  homepage 'https://espressoapp.com/'

  depends_on macos: '>= :sierra'

  app 'Espresso.app'
end
