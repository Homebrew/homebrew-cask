cask "agenda" do
  version "11.0.1"
  sha256 "b9d10fb6a6fea0808dd1c4e12d46d1009ae7f4185e1896af048b8fbda0282522"

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast "https://downloads.agenda.com/AgendaSparkleAppcast.xml"
  name "Agenda"
  desc "Note taking application focusing on dates"
  homepage "https://agenda.com/"

  depends_on macos: ">= :sierra"

  app "Agenda.app"
end
