cask 'kite' do
  version '0.20190127.1'
  sha256 '818ee6606fb0f6f0f90f73089196e93d542fac2602e2220438f7205bfa6b9bd8'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
