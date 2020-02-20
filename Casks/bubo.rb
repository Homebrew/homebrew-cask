cask 'bubo' do
  version '1.0'
  sha256 '25c50797d1397b0e4ae02346d6179c9c8ec3fbd129dad759100fb3f598109630'

  # s3-us-west-2.amazonaws.com/jguice/mac-bt-headset-fix-beta was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/jguice/mac-bt-headset-fix-beta/bubo.app.zip'
  name 'Bubo'
  name 'Spotify Bluetooth Headset Listener'
  homepage 'https://github.com/jguice/mac-bt-headset-fix'

  depends_on macos: '>= :sierra'

  app 'bubo.app'
end
