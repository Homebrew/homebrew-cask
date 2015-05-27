cask :v1 => 'pixlr' do
  version '1.0.1_26'
  sha256 'a68fb58bd8f10eaa31bafcdee1c6004fcae12f750830cf8a7b7399bf23ba8087'

  url "https://cdn2.pixlr.com/mac/Autodesk_Pixlr_ver#{version}_Mac_Installer.dmg"
  name 'Pixlr'
  appcast 'http://updatefeed.pixlr.com/pixlr-for-mac-appfeed.xml',
          :sha256 => '3748c8735f5f9441a1f12a170296628822372604c41feb41193156792f9e9512'
  homepage 'https://pixlr.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pixlr.app'
end
