cask 'nucleo' do
  version '2.4.0'
  sha256 '788fda7af0d2163abc7d48ebafc8821e6696c83d2145e40044054c22eb87bde7'

  # s3-us-west-2.amazonaws.com/nucleo-app-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/nucleo-app-releases/mac/Nucleo_#{version}.zip"
  appcast 'https://nucleoapp.com/updates',
          checkpoint: '6dd9f2ac56b0e6c5ba62212485a771b84abee0495842b9e56d462aca7f9104f0'
  name 'Nucleo'
  homepage 'https://nucleoapp.com/'

  app 'Nucleo.app'
end
