cask 'ghostlab' do
  version '2.1.1'
  sha256 '3f62bcfa28d556183a6578f884769d9b5ecf1c5b391e15aed01fa7bcbda907b7'

  url "https://awesome.vanamco.com/Ghostlab2/update/packages/mac/Ghostlab2-#{version}.zip"
  appcast 'https://awesome.vanamco.com/Ghostlab2/update/ghostlab2-cast.xml?vco=trkd',
          checkpoint: '97bf0f608f618d26c958a6b8214c3d05073b2da61cc88c70e9c4ece3b3f1a696'
  name 'Ghostlab'
  homepage 'https://vanamco.com/ghostlab/'
  license :commercial

  app 'Ghostlab2.app'
end
