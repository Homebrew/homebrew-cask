cask "agenda" do
  version "18.1.1"
  sha256 "85c81b4db995c3035498fc648d7c7408578b216094fd12bae65b2f2afb7e203c"

  url "https://downloads.agenda.com/Agenda_#{version}.zip"
  name "Agenda"
  desc "Note taking application focusing on dates"
  homepage "https://agenda.com/"

  livecheck do
    url "https://agenda.community/t/release-notes/34763/61"
    regex(/version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

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
