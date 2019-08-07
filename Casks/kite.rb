cask 'kite' do
  version '0.20190806.0'
  sha256 '712521e80b394ac31e032ebcc4c98326e0b7c3251922ea98314c3c98a1ffb7f8'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
