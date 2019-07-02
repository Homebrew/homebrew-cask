cask 'agenda' do
  version '6.0'
  sha256 'd99a1b9ae1401f16e20aa84ff4a1f23329e0efdb2c161801139f4cd427e5bcd3'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
