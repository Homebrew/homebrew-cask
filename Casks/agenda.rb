cask 'agenda' do
  version '5.0'
  sha256 '6c877d609d23883a9a6834021efda9f3c22b72a6c034bcc9cf2dd64d8c7016ea'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
