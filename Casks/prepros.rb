cask 'prepros' do
  version '6.2.1'
  sha256 '3c0ae453abcb2a729c11b8cfb0d0923d28d0e7ccafcd76e3d4a74b684d69233a'

  # s3-us-west-2.amazonaws.com/prepros-io-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/prepros-io-releases/stable/Prepros-Mac-#{version}.zip"
  appcast 'https://prepros.io/changelog',
          checkpoint: '18a3f3017f3d828f0495af07c8bf8d787842882defea9f67c933c156e72e9d1b'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
