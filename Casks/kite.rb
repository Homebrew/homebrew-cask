cask 'kite' do
  version '0.20190925.0'
  sha256 'b5bba045220b609953afac6789e4ff0387062eabac96426f5c5a530e6426c810'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
