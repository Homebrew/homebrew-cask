cask "agenda" do
  version "11.2"
  sha256 "61d8f5f771ef8bdc45f27b73cc591fdceb4f9372adda785ebef489d02e47bf0a"

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast "https://downloads.agenda.com/AgendaSparkleAppcast.xml"
  name "Agenda"
  desc "Note taking application focusing on dates"
  homepage "https://agenda.com/"

  depends_on macos: ">= :sierra"

  app "Agenda.app"
end
