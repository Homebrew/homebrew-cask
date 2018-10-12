cask 'agenda' do
  version '2.5.1'
  sha256 '59c79a5f8af1a8a261948356e2d3d850a2468bfa0e2a386f7f7c12bd1242e72a'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
