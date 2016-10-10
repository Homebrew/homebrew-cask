cask 'pixlr' do
  version '1.1.0_73'
  sha256 'd4ee65c63fa307da05ba54d641f081c951581976655507efbcd466143a4afa92'

  url "https://cdn2.pixlr.com/mac/Autodesk_Pixlr_v#{version}_Mac_Installer.dmg"
  appcast 'https://updatefeed.pixlr.com/pixlr-for-mac-appfeed.xml',
          checkpoint: '9250cecc90d9809e96babf7db2033b56bb572ee7b35628a138c6c05a01fd53c4'
  name 'Autodesk Pixlr'
  homepage 'https://pixlr.com'

  app 'Pixlr.app'
end
