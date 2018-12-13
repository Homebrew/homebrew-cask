cask 'agenda' do
  version '4.0'
  sha256 '2382891dfc44e0cf239408a74cdc1d227f379a1f659698ad8048d92085324a10'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
