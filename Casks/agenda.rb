cask 'agenda' do
  version '10.0'
  sha256 'a3f0f1cbebc387b8de1226224ad66ff1dc2195620d1225ff4f03a105f369c1c9'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
