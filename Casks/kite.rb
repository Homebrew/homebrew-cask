cask 'kite' do
  version '0.20200128.0'
  sha256 '7bde284df78cef16184cee4403fb158a917285361a297c205d422716d4e92b57'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
