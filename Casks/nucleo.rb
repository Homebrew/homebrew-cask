cask 'nucleo' do
  version '2.6.0'
  sha256 'faf199b5708b69564c9127e41d2b03fb06f9426e07a68d77d0dbb60a78dd5a37'

  # nucleo-app-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://nucleo-app-releases.s3.amazonaws.com/mac/Nucleo_#{version}.zip"
  appcast 'https://nucleoapp.com/updates'
  name 'Nucleo'
  homepage 'https://nucleoapp.com/'

  app 'Nucleo.app'
end
