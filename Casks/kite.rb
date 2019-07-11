cask 'kite' do
  version '0.20190710.0'
  sha256 '38080cf863d6f5f3f39a23b55cdccf570ae179956f5e4a594742a0c0089c70e4'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
