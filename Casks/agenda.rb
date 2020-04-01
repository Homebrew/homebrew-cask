cask 'agenda' do
  version '9.3.1'
  sha256 '2f89df4c87b0e73a917bed0f85dfa5320663796d2ed75ff932c6f48b8b4ac361'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
