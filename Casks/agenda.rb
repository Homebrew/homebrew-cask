cask 'agenda' do
  version '9.2'
  sha256 '99fb05b0fc79575040134c86e811ba602d060ae22399a86563488bd890f32ac2'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
