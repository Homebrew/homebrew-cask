cask 'kite' do
  version '0.20191007.1'
  sha256 'b6817a840325cc8a08a0c2afcac036554e6f7c3d20758a437d3953d8e37ec4f3'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
