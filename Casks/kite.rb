cask 'kite' do
  version '0.20200211.0'
  sha256 '42c5dee15b584f0b464cd7c89abb645fee711ab255af2db9579bd1f429231d69'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
