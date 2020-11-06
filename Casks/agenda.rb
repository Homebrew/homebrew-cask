cask "agenda" do
  version "11.1"
  sha256 "91e38194fc2d14cbce7db0b53d03524d695f71b249ffcbe370eeee0f734d1554"

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast "https://downloads.agenda.com/AgendaSparkleAppcast.xml"
  name "Agenda"
  desc "Note taking application focusing on dates"
  homepage "https://agenda.com/"

  depends_on macos: ">= :sierra"

  app "Agenda.app"
end
