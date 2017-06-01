cask 'kite' do
  version '0.20170531.0'
  sha256 '1170e3c338423c8dd73f52cd1fc98000bbe0a3d1528e14bcba3778a2c78afcd4'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: 'b1546aa8348ba6593bb9abec9af411d005d756ff69f8c9ec3920e4f714058c07'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
