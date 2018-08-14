cask 'agenda' do
  version '2.3'
  sha256 '818b928bb6ac0bc61e4127b687cddcffcd12547cc5896c03a3601635bb65248e'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
