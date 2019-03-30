cask 'agenda' do
  version '5.1'
  sha256 'b26944df8cc929114a37cb9c4bf13cbaacd19b462968ce92daf5e883efe9e3c7'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
