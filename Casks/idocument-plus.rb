cask :v1 => 'idocument-plus' do
  version :latest
  sha256 :no_check

  url 'http://t.icyblaze.com/idpluslatest'
  appcast 'http://t.icyblaze.com/idplusc4ud'
  homepage 'http://www.icyblaze.com/idocument/'
  license :unknown    # todo: improve this machine-generated value

  app 'iDocument Plus.app'
end
