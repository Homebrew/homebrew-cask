cask 'agenda' do
  version '2.6'
  sha256 '82665a385aa7d9a871375a789c8888bd66d498c48e0e2454578cef348c43c0ed'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
