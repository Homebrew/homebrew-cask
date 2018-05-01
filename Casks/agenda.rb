cask 'agenda' do
  version '2.2'
  sha256 '86258f5234a28eca9913fc3d26c2fd78f9bd1fdb72af9f09bf98475c4da168b2'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml',
          checkpoint: '5a8df5d9297df3e4a4cccb91d1aaea31b16f33af67a827258a018613de0f60fc'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
