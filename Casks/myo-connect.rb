cask :v1 => 'myo-connect' do
  version '0.9.0'
  sha256 '831d997d2ca0624d01da4bba39ba859da5dfd5f20d793a484b24c978ebd7dbe3'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/thalmicdownloads/mac/#{version}/MyoConnect.dmg"
  name 'Myo Connect'
  homepage 'https://developer.thalmic.com'
  license :gratis
  tags :vendor => 'Thalmic Labs'

  app 'Myo Connect.app'

  zap :delete => '~/Library/Preferences/com.thalmic.Myo Connect.plist'
end
