cask 'agenda' do
  version '10.0.4'
  sha256 'b4fb1af4cb954af09c42a02b9f541c5e9eddb5595323f1263a5c2cf2bfeca613'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
