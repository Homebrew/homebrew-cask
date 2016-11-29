cask 'preen' do
  version '1.70'
  sha256 '368fafaf4344bbe031723a7bbd8c59f810b5a6c4f91be50ce22fc874cfab156b'

  url "http://anomiesoftware.com/downloads/preenImage#{version}.dmg"
  appcast 'http://www.anomiesoftware.com/PreenAppcast.xml',
          checkpoint: '5874e990f04b0cf0d11ba02bc0574eddf39be57ffaf91c5e2e5ee68d83b084b1'
  name 'Preen'
  homepage 'http://anomiesoftware.com/Anomie_Software/Preen.html'

  app 'Preen.app'
end
