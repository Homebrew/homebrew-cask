cask 'agenda' do
  version '9.1.3'
  sha256 'a7ffaf98e9a244c450c0f70070ec5706847b7e517311cd871fb25060fa7fe5a5'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
