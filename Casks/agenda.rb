cask 'agenda' do
  version '1.3'
  sha256 '8a17aa615e5cd44e8c1557db4da985e6c891e9b3237840772df1cf15283e757e'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml',
          checkpoint: 'ace5f437c98924b639602763ae74624776eb42120207bd0449c52849e1f3811a'
  name 'Agenda'
  homepage 'https://agenda.com/'

  app 'Agenda.app'
end
