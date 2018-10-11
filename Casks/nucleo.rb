cask 'nucleo' do
  version '2.4.3'
  sha256 '514dcfe5461825dbe9b37a8a810fb636af4cd16a82517aef1e43b7d3e4ad398c'

  # s3-us-west-2.amazonaws.com/nucleo-app-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/nucleo-app-releases/mac/Nucleo_#{version}.zip"
  appcast 'https://nucleoapp.com/updates'
  name 'Nucleo'
  homepage 'https://nucleoapp.com/'

  app 'Nucleo.app'
end
