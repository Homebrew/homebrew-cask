cask "agenda" do
  version "11.0"
  sha256 "9dab88a4f7038fb01f326da2d731ce74104a8365893b24920fef291f086ade96"

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast "https://downloads.agenda.com/AgendaSparkleAppcast.xml"
  name "Agenda"
  desc "Note taking application focusing on dates"
  homepage "https://agenda.com/"

  depends_on macos: ">= :sierra"

  app "Agenda.app"
end
