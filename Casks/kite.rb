cask 'kite' do
  version '0.20190606.1'
  sha256 '6ba41695829dc974fcc7d3e842eefc7c3397f181b506c620fc101844ae0d784d'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
