cask 'agenda' do
  version '9.0'
  sha256 'b878666b0d902bb06ca1d703cbffc058dbbd71c7944ffa415767e8511267b5b6'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
