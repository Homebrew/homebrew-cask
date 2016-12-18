cask 'houdahspot' do
  version '4.2.8'
  sha256 'f0601012a694e1f07dd5708ba4cb86bbbe7b085483c55a6a4ab6c45d68094a9e'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          checkpoint: 'f2d8687b84885bc2caab04dcfc13d28618e0ec1bc9804f66025046ebf20d084c'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'

  postflight do
    suppress_move_to_applications
  end
end
