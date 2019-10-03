cask 'kite' do
  version '0.20191001.0'
  sha256 '88b331bf590746eed492a017c711f8d11696902860ebbdc69ffe51c86eb85013'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
