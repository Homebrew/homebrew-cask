cask "agenda" do
  version "18.1.2"
  sha256 "98686816e48fc9679013e0965cc72614931018bca6f8e8b844c9707ed767f38f"

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
