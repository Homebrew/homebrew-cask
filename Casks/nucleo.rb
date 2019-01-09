cask 'nucleo' do
  version '2.4.5'
  sha256 'd8b4c62e326028ee0fc558f5d7a7210cbb26f74b677b61e1326426e446b5ece9'

  # s3-us-west-2.amazonaws.com/nucleo-app-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/nucleo-app-releases/mac/Nucleo_#{version}.zip"
  appcast 'https://nucleoapp.com/updates'
  name 'Nucleo'
  homepage 'https://nucleoapp.com/'

  app 'Nucleo.app'
end
