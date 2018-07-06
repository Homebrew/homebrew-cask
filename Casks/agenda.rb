cask 'agenda' do
  version '2.2.1'
  sha256 '9dac10129525250258422524d2f087e461e003237625d7dcee324a9d9097e6c0'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
