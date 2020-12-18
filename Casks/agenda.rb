cask "agenda" do
  version "11.2.2"
  sha256 "9878a33bf85668b5909df50006a05510e5a2787832c2a8d6981d0e7773d4724c"

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  appcast "https://downloads.agenda.com/AgendaSparkleAppcast.xml"
  name "Agenda"
  desc "Note taking application focusing on dates"
  homepage "https://agenda.com/"

  depends_on macos: ">= :sierra"

  app "Agenda.app"
end
