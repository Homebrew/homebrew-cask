cask :v1 => 'pixlr' do
  version '1.0.3_323'
  sha256 '625fe3f8b90101bf28edecf04417061f1f9641277d5ab0c3d8ddbdab23cd836f'

  url "https://cdn2.pixlr.com/mac/Autodesk_Pixlr_v#{version}_Mac_Installer.dmg"
  name 'Pixlr'
  appcast 'https://updatefeed.pixlr.com/pixlr-for-mac-appfeed.xml',
          :sha256 => '3748c8735f5f9441a1f12a170296628822372604c41feb41193156792f9e9512'
  homepage 'https://pixlr.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pixlr.app'
end
