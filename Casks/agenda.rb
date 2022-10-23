cask "agenda" do
  version "16.0,259"
  sha256 "3705f833f7d8263f21fcf5c8d1f2520fee0f8a8687b68644f8327eda1c2eb2b9"

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
