cask "agenda" do
  version "14.0.4,224"
  sha256 "f04bc3026336363788bdeb0c882eb60c39557f5246703f3e8717d4e276aa4bf6"

  url "https://downloads.agenda.com/Agenda_#{version.csv.first}.zip"
  name "Agenda"
  desc "Note taking application focusing on dates"
  homepage "https://agenda.com/"

  livecheck do
    url "https://downloads.agenda.com/AgendaSparkleAppcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Agenda.app"

  zap trash: [
    "~/Library/Application Scripts/com.momenta.agenda.macos",
    "~/Library/Application Scripts/com.momenta.agenda.macos.extension-sharing",
    "~/Library/Application Scripts/com.momenta.agenda.macos.extension-widget",
    "~/Library/Containers/com.momenta.agenda.macos",
    "~/Library/Containers/com.momenta.agenda.macos.extension-sharing",
    "~/Library/Containers/com.momenta.agenda.macos.extension-widget",
    "~/Library/Group Containers/WRBK2Z2EG7.group.com.momenta.agenda.macos",
    "~/Library/Preferences/com.momenta.agenda.macos.plist",
  ]
end
