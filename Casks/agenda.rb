cask 'agenda' do
  version '5.2'
  sha256 'e546aa4f9c16f9a98f834385be00f922808ca1ef5566ffb5198c58b818cc26cc'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
