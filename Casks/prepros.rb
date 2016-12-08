cask 'prepros' do
  version '6.0.1'
  sha256 '9541c9561be11dfaebd5b682571a2e6f46edcc6186016ce9bdba6e16573834f1'

  # s3-us-west-2.amazonaws.com/prepros-io-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/prepros-io-releases/stable/Prepros-Mac-#{version}.zip"
  appcast 'https://prepros.io/changelog',
          checkpoint: '1e4dfb8b73ea10880c0a158c5587368f07bc54f0f48e91770c096c1b5dbd0614'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
