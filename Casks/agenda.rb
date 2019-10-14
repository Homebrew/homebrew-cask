cask 'agenda' do
  version '7.0'
  sha256 '7fe5fe695188ea10ec2042155423e12809cf6ede5d3babc204aeab14a93f3bfb'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
