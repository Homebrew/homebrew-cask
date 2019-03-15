cask 'kite' do
  version '0.20190313.0'
  sha256 '9a1bc85bdc776b36fd39f59d8d9b4e5e2bc41b4800747690c74094532113061d'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
