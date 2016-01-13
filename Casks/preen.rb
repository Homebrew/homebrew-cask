cask 'preen' do
  version '1.70'
  sha256 '368fafaf4344bbe031723a7bbd8c59f810b5a6c4f91be50ce22fc874cfab156b'

  url "http://anomiesoftware.com/downloads/preenImage#{version}.dmg"
  appcast 'http://www.anomiesoftware.com/PreenAppcast.xml',
          :checkpoint => 'a99f8b0dc8714842bba34f61da3ceb8032b29a12d8abe3c3911695797098b11c'
  name 'Preen'
  homepage 'http://anomiesoftware.com/Anomie_Software/Preen.html'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Preen.app'
end
