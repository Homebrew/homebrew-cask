cask 'agenda' do
  version '9.1.1'
  sha256 'f2b78d81746f2a45031bc980be46ca9d7c048b11ae608dc8d76f83f0b01304ba'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
