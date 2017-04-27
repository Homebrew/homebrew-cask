cask 'espresso' do
  version '5.0'
  sha256 '462a57b2364764f15b62da95cab24633cb59b3dca1c4f05ac6ad85701372dda4'

  # static.macrabbit.com was verified as official when first introduced to the cask
  url "https://static.macrabbit.com/downloads/Espresso%20v#{version.major}.zip"
  appcast "https://update.macrabbit.com/espresso/#{version}.xml",
          checkpoint: 'ac70487ffbb4c6bd7c32ddde622b66bc622a8538850b20ccc22bc2c279e84c8f'
  name 'Espresso'
  homepage 'https://espressoapp.com/'

  app 'Espresso.app'
end
