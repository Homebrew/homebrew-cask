cask 'agenda' do
  version '5.3'
  sha256 '4528742404bcafd5b89d2295e96da57204b30ab052ae6bfb711ad3634a4dfdfc'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
