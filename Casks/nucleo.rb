cask 'nucleo' do
  version '2.4.1'
  sha256 'ac25a324fd3e3c3516df0c8a37df44a776a9d1b8c02ba0eeebe9d30e0f0b9852'

  # s3-us-west-2.amazonaws.com/nucleo-app-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/nucleo-app-releases/mac/Nucleo_#{version}.zip"
  appcast 'https://nucleoapp.com/updates'
  name 'Nucleo'
  homepage 'https://nucleoapp.com/'

  app 'Nucleo.app'
end
