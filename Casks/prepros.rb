cask 'prepros' do
  version '6.0.16'
  sha256 '331e3774ba0738c0190a85a2c791873df7c3bc55f37e33bd7397987c58e835b5'

  # s3-us-west-2.amazonaws.com/prepros-io-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/prepros-io-releases/stable/Prepros-Mac-#{version}.zip"
  appcast 'https://prepros.io/changelog',
          checkpoint: '4d1f4365b4ec86f8eeb6c253550de249e36c1dc221f2cf7a063e3d3cfe8e2963'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
