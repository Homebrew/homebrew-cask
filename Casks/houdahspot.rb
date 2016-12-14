cask 'houdahspot' do
  version '4.2.7'
  sha256 '3eb4d5bda5420fcc37b207e8fcc9e63bd22c7d09590653466f1e0c31bd53bf49'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          checkpoint: 'c0176bbeaa2d46dcba4b1e43d4f2df31d28ef7e29698759a1f3c297862c09372'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'

  postflight do
    suppress_move_to_applications
  end
end
