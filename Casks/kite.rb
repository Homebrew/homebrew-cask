cask 'kite' do
  version '0.20190618.0'
  sha256 '8deaf7dbb73f2829024c32680459fd019d0535a20b1e6aeded21cf4d5e451e64'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
