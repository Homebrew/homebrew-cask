cask 'kite' do
  version '0.20180511.0'
  sha256 '273715f2e3c3db694abe210349c5ee0f090933fb31acf1eeb81f7e07f83f21b3'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: '6f91ebf0583dcdb9bba55ed29fadf54c9e6a49ed4bd372023ed4bd1c1fe200aa'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Kite.app'
end
