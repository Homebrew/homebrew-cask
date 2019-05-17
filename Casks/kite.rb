cask 'kite' do
  version '0.20190516.0'
  sha256 'ec9ff857a782fd909504f75e9edbd3c114cdcc47bcbe8bc62093e71f67e76916'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
