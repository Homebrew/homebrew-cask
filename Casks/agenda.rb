cask 'agenda' do
  version '9.3.2'
  sha256 '1d0f74867018937dc1d3907289678a687e051c7642e0cf15b72c02f528021433'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
