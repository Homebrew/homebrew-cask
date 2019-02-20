cask 'kite' do
  version '0.20190131.0'
  sha256 '4b33884e77e4e000fb74750f4bec4cc3fbbb501e0d23e9efbc3acfcd53ca0246'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
