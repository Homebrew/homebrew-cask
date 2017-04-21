cask 'prepros' do
  version '6.0.12'
  sha256 '2bd0335b895ebfd64f6cf9c0e5d136427f34b2819b2e3cc04b727ef9260fafdb'

  # s3-us-west-2.amazonaws.com/prepros-io-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/prepros-io-releases/stable/Prepros-Mac-#{version}.zip"
  appcast 'https://prepros.io/changelog',
          checkpoint: '0e5734213f63c98a43bc53867ba8f4b329a10bc63724dae0aa8536b0649eadb8'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
