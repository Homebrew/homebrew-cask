cask 'prepros' do
  version '6.0.13'
  sha256 'abae52c93005edca3eb5d3f1bbd6fc9d4d7138b4b1b4f14c1685ca9d49ead429'

  # s3-us-west-2.amazonaws.com/prepros-io-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/prepros-io-releases/stable/Prepros-Mac-#{version}.zip"
  appcast 'https://prepros.io/changelog',
          checkpoint: '448a374bb1ed28af9cb06387b5c87e5d3a8c50eb11742daf68b74bcc473a7b54'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
