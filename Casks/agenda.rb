cask 'agenda' do
  version '9.1'
  sha256 '4bdf957cad66da8b18cb7c4d88157ece62565a17b9ea42dd8c6d8cfa88c23c18'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
