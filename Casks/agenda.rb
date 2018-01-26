cask 'agenda' do
  version '1.1'
  sha256 '017b5302372553bbc438b6f112847e29f6dc06978a217263f3af5c5c80cd2379'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml',
          checkpoint: 'fb8cc08e37aa295776f268f572a187b980fc3e414b53625d161c92550e9c5815'
  name 'Agenda'
  homepage 'https://agenda.com/'

  app 'Agenda.app'
end
