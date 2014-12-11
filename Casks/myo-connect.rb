cask :v1 => 'myo-connect' do
  version '0.7.0'
  sha256 '61924ae6a813f33328f6275d37047ba7379c503d52be323e177b6f44220ce7fa'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/thalmicdownloads/mac/#{version}/MyoConnect.dmg"
  homepage 'https://developer.thalmic.com'
  license :unknown    # todo: improve this machine-generated value
  tags :vendor => 'Thalmic Labs'

  app 'Myo Connect.app'

  zap :delete=> '~/Library/Preferences/com.thalmic.Myo Connect.plist'
end
