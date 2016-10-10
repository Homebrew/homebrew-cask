cask 'myo-connect' do
  version '1.0.1'
  sha256 '50cddbbbd5a9d9126e4d3abcc0112dcec0b304dbf847ef570395650cde511195'

  # s3.amazonaws.com/thalmicdownloads was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/thalmicdownloads/mac/#{version}/MyoConnect.dmg"
  name 'Thalmic Labs Myo Connect'
  homepage 'https://developer.thalmic.com'

  app 'Myo Connect.app'

  zap delete: '~/Library/Preferences/com.thalmic.Myo Connect.plist'
end
