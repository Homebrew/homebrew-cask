cask 'kite' do
  version '0.20190627.0'
  sha256 'f2838de9d7d4c7813a7ced4dbbce56d860565a912dad05476aa827b22139399f'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
