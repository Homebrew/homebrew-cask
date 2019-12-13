cask 'kite' do
  version '0.20191212.0'
  sha256 'ef38b72047874a169b43e7c72c46db7d8617a0c69cc90c10824c461c65f709e9'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
