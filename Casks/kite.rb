cask 'kite' do
  version '0.20180531.1'
  sha256 '908433434244d73fcbf62c530cda5f07f1665034068237a3d0ceb653dd97b961'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: '41178d0bd52ed0ab327adb933c8b2a93634c4de298948841b6279e1b96d3f7c3'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Kite.app'
end
