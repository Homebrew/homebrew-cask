cask 'agenda' do
  version '9.3'
  sha256 'af50d5452aff41396e7b217fc8c035ee7825d61471dc9cf33e80e1a286c8e75a'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
