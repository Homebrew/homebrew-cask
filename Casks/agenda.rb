cask "agenda" do
  version "12.0.2,178"
  sha256 "defa0876ae5bcb0a2afc61ef6b32efe967955323969a8991cf26f5efae523ad2"

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
