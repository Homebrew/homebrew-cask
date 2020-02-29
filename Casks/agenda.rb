cask 'agenda' do
  version '9.2.1'
  sha256 '9cfeff0cd8f5e4b58ba7c70ede33e256bc10132f2a803234168e5332d817ac3e'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
