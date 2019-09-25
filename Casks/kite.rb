cask 'kite' do
  version '0.20190924.0'
  sha256 'b03d9e3422d43accdbf3f64c7149f1afe2a93a8e4378f9206b90882e0fce1249'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
