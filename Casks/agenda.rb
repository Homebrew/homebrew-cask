cask "agenda" do
  version "12.0,178"
  sha256 "3ed8c72201e94d0c918061e07195de76a6df207122070d2b152215a5cf8e7cbc"

  url "https://downloads.agenda.com/Agenda_#{version.before_comma}.zip"
  name "Agenda"
  desc "Note taking application focusing on dates"
  homepage "https://agenda.com/"

  livecheck do
    url "https://downloads.agenda.com/AgendaSparkleAppcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Agenda.app"
end
