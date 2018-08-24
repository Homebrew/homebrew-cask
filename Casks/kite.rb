cask 'kite' do
  version '0.20180823.0'
  sha256 '384c1fb35ad3f2297873d8e2bffa6d522cd7eed3578b2d98bd0e58d83f1dfd8d'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Kite.app'
end
