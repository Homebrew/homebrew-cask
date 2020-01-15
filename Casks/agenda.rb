cask 'agenda' do
  version '9.1.2'
  sha256 'b1c636d546b5b5927bed06e381bae273edc21cfb662e5b207378b7576c9845a2'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
