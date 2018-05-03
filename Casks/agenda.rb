cask 'agenda' do
  version '2.2.1'
  sha256 '9dac10129525250258422524d2f087e461e003237625d7dcee324a9d9097e6c0'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml',
          checkpoint: '7664a4ea3672d2ef8f09be11463efb093b1494cd9d50cd0de42c1c830fc3de1e'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
