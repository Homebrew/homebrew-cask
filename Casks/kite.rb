cask 'kite' do
  version '0.20190314.0'
  sha256 '3e308b0f0e0d7b93028a8791dee5145f7a194a53c5df5bc795261f7b0058b8eb'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
