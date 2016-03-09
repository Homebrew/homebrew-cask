cask 'dragondrop' do
  version '1.4.1'
  sha256 '40e91b83d9a70a6f416394cddb58e758b44fa1c84950f99a6a391f60bce32e81'

  url "https://shinyplasticbag.com/dragondrop/releases/dragondrop_#{version}.dmg"
  appcast 'https://shinyplasticbag.com/dragondrop/updates.xml',
          checkpoint: '1e5a31caed5009c9df8e41cb7543ec154fee14852b63660f62e29411654d4928'
  name 'DragonDrop'
  homepage 'https://shinyplasticbag.com/dragondrop/'
  license :commercial

  app 'DragonDrop.app'
end
