cask "agenda" do
  version "13.0,187"
  sha256 "a592cf6a84e1fc5764474f787310462984d1793bf6d14ae2d527a74451e80ec8"

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

  zap trash: [
    "~/Library/Application Scripts/com.momenta.agenda.macos",
    "~/Library/Application Scripts/com.momenta.agenda.macos.extension-sharing",
    "~/Library/Application Scripts/com.momenta.agenda.macos.extension-widget",
    "~/Library/Containers/com.momenta.agenda.macos",
    "~/Library/Containers/com.momenta.agenda.macos.extension-sharing",
    "~/Library/Containers/com.momenta.agenda.macos.extension-widget",
    "~/Library/Group Containers/WRBK2Z2EG7.group.com.momenta.agenda.macos",
  ]
end
