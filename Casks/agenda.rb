cask 'agenda' do
  version '5.5'
  sha256 '85f73513cb46bd0f3cf526112a3bb707a06ef8e5d87b5259a28dc9b318a38a58'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
