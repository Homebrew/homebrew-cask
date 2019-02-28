cask 'kite' do
  version '0.20190226.0'
  sha256 '1cff249ff0637450610fa92d6663168c2942e64f714030cd402dcb02db79bdf7'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
