cask 'kite' do
  version '0.20190717.0'
  sha256 'b97176a7b85c4c5402d7d62b8c528647ce013430857321698e580ad4a6bfd610'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
