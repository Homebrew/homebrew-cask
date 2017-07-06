cask 'nucleo' do
  version '2.0.2'
  sha256 '89641365b6de691d6761cda630d1ffe034c39cadbcdf99a6a02154a229ed2683'

  # s3-us-west-2.amazonaws.com/nucleo-app-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/nucleo-app-releases/mac/Nucleo_#{version}.zip"
  appcast 'https://nucleoapp.com/updates',
          checkpoint: 'd083d6ad0f542ccabc982f8f5fe19c6bfb86d513eac739302235d6d0bf4f49e2'
  name 'Nucleo'
  homepage 'https://nucleoapp.com/'

  app 'Nucleo.app'
end
