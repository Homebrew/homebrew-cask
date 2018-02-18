cask 'agenda' do
  version '1.4'
  sha256 'd3e33bebdc3795bc726810be13e73edac2afa896611541b3cff0527c8b3fb332'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml',
          checkpoint: '89e84e70260e49d610810f491ff5008d002ccb50ef72288cf0e206e9aa72b8f4'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
