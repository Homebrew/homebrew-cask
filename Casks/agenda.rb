cask 'agenda' do
  version '10.0.2'
  sha256 'cf42eb72d7389f14bc33d669a4005767379076ca70c9e49f8dd701e42159fca1'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
