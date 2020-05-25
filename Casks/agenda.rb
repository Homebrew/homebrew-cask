cask 'agenda' do
  version '10.0.1'
  sha256 '18c97efecb09a165136df38af60bd701684f097952811e8d3ed7507cb5af276d'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
