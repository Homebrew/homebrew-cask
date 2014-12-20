cask :v1 => 'myo-connect' do
  version '0.8.0'
  sha256 'eecaff75b7e4d3018c9e9d4edc58f3186e58f21c9a2d4589eb8f2f5bd1313794'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/thalmicdownloads/mac/#{version}/MyoConnect.dmg"
  homepage 'https://developer.thalmic.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  tags :vendor => 'Thalmic Labs'

  app 'Myo Connect.app'

  zap :delete=> '~/Library/Preferences/com.thalmic.Myo Connect.plist'
end
