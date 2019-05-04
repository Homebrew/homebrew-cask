cask 'agenda' do
  version '5.4'
  sha256 '1c96a2280037d38d59ea827fa1eac533e8424e749c3d6735bc1b7186f317ff5a'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
