cask 'houdahspot' do
  version '4.3.5'
  sha256 '6f2890627fa698e60571da6006d1abecd6fc8d3b4590fceeb3765e25fea90e61'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          checkpoint: '0e00d503d88a1950841eab38dd186b8c6947486edfb81080175edd2092c0425b'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'
end
