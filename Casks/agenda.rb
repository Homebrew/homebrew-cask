cask 'agenda' do
  version '2.0'
  sha256 'e932ba001060cba4c460dc5a46b553a4ff2d3e8e37e994c6ce493f22cea113d5'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml',
          checkpoint: '5f232159da74ebca1a64068761601439f60c2348d13f3b926bfa3085a33e5b99'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
