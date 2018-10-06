cask 'preen' do
  version '1.70'
  sha256 '368fafaf4344bbe031723a7bbd8c59f810b5a6c4f91be50ce22fc874cfab156b'

  url "https://anomiesoftware.com/downloads/preenImage#{version}.dmg"
  appcast 'https://www.anomiesoftware.com/PreenAppcast.xml'
  name 'Preen'
  homepage 'https://anomiesoftware.com/Anomie_Software/Preen.html'

  app 'Preen.app'
end
