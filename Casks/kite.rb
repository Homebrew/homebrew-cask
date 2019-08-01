cask 'kite' do
  version '0.20190730.0'
  sha256 '0822eec8de82fd002faefbcab962b3dba1b0fa6474bfc495a0e16932d6bd7b56'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
