cask :v1 => 'myo-connect' do
  version '0.14.0'
  sha256 '8469972d3223154b0a938f811adef142aade2e0d426f79bc0bbdbb27ea17071a'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/thalmicdownloads/mac/#{version}/MyoConnect.dmg"
  name 'Myo Connect'
  homepage 'https://developer.thalmic.com'
  license :gratis
  tags :vendor => 'Thalmic Labs'

  app 'Myo Connect.app'

  zap :delete => '~/Library/Preferences/com.thalmic.Myo Connect.plist'
end
