cask :v1 => 'preen' do
  version '1.70'
  sha256 '368fafaf4344bbe031723a7bbd8c59f810b5a6c4f91be50ce22fc874cfab156b'

  url "http://anomiesoftware.com/downloads/preenImage#{version}.dmg"
  appcast 'http://www.anomiesoftware.com/PreenAppcast.xml',
          :sha256 => 'd4e76fcd407b0b93ea02071f03adc934606c4bc061d6f7fb3d2186c81762803d'
  name 'Preen'
  homepage 'http://anomiesoftware.com/Anomie_Software/Preen.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Preen.app'
end
