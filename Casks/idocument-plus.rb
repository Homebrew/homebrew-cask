class IdocumentPlus < Cask
  version :latest
  sha256 :no_check

  url 'http://t.icyblaze.com/idpluslatest'
  appcast 'http://t.icyblaze.com/idplusc4ud'
  homepage 'http://www.icyblaze.com/idocument/'

  app 'iDocument Plus.app'
end
