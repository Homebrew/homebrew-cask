cask 'agenda' do
  version '2.1.1'
  sha256 '4bf06e12235bce48bd688ef4ea424b0a00597fa201ccdeaaef569e49f10cd0ec'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml',
          checkpoint: '74a76fcfd3c00075927c4f0f5a26329031a7281e994c5625240471be4827f650'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
