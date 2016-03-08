cask 'myo-connect' do
  version '1.0.0'
  sha256 'd0f91042dec36d69cf0a9968ea351cd33dbf618964a7631d12d9c1d9c7b362fe'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/thalmicdownloads/mac/#{version}/MyoConnect.dmg"
  name 'Thalmic Labs Myo Connect'
  homepage 'https://developer.thalmic.com'
  license :gratis

  app 'Myo Connect.app'

  zap delete: '~/Library/Preferences/com.thalmic.Myo Connect.plist'
end
