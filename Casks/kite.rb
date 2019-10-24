cask 'kite' do
  version '0.20191022.0'
  sha256 '75fad20b6d8f79407efbc7786e4a4c577f008241540962e262182a815232d19f'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
