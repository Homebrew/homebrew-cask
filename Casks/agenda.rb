cask 'agenda' do
  version '1.2'
  sha256 '04f39bc4691924024f0f4192fccbd1c1bc06686e337eef95ac9a6a9361b43d2a'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml',
          checkpoint: '6dcc91355ad735e6f66a472c5e272981e181dc6f3d1c200765054ba7554c2ff2'
  name 'Agenda'
  homepage 'https://agenda.com/'

  app 'Agenda.app'
end
