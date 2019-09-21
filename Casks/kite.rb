cask 'kite' do
  version '0.20190919.1'
  sha256 '92f2efc81608c28f7696ec9e6e0984e06269498db79cac5039b386d178b4f16d'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
