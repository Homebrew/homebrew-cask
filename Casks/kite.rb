cask 'kite' do
  version '0.20180713.0'
  sha256 '3092f90041d2dad0d4b96696563cacd18a53fbd7ff2d2a8a641f5c6b55e69d16'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Kite.app'
end
