cask 'agenda' do
  version '6.0.1'
  sha256 '06020ff02306724c1465b0247b357be7ac9a9f46ff992619dcad3108e038038b'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
