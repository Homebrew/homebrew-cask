cask 'agenda' do
  version '10.0.3'
  sha256 'e58c83f1333e13b5b3fee2a62290cc61b86d7c8bdf54bc78145a3ee7528d4acd'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
