cask 'kite' do
  version '0.20190724.0'
  sha256 '1477ed31ec647416cac550cca504d7d1c9c37b7728536d358d4d706d5b14866d'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
