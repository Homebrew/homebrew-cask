cask 'houdahspot' do
  version '4.2.10'
  sha256 '563fb96f4bb9afc4aa8a8c1324d55ea2b87e4877b875b18728d0847b10a20b57'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          checkpoint: '1b2dca6bf16c13d2365778c33b7d9b315546ed949d84e1e749f045ad2781567a'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'

  postflight do
    suppress_move_to_applications
  end
end
