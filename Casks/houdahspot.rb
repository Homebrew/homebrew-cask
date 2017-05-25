cask 'houdahspot' do
  version '4.2.10'
  sha256 '563fb96f4bb9afc4aa8a8c1324d55ea2b87e4877b875b18728d0847b10a20b57'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          checkpoint: 'e06ce13c8c1995a5a89d4405ef6acdebe11537e390e248a8ef72e1b08cf76caf'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'
end
