cask 'agenda' do
  version '4.1'
  sha256 '4774b7255b1d07c34bbd673a26ff57a6f429c480f73aa089b05e1b15da24df4d'

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast 'https://downloads.agenda.com/AgendaSparkleAppcast.xml'
  name 'Agenda'
  homepage 'https://agenda.com/'

  depends_on macos: '>= :sierra'

  app 'Agenda.app'
end
