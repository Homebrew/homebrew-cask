cask 'kite' do
  version '0.20180816.0'
  sha256 '37c43de2c2accf65550d314e8a648b96eca941c13b781996d14c34cdc9acd163'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Kite.app'
end
