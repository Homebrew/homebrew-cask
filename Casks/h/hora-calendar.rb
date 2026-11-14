cask "hora-calendar" do
  version "3.0.2,651"
  sha256 "0b085d9c155be69c80f551b320a0adf2f90702181e416d57dd8e16332526702f"

  url "https://downloads.horacal.app/direct/stable/releases/#{version.csv.first}/#{version.csv.second}/hora-calendar-#{version.csv.first}-#{version.csv.second}.zip"
  name "hora Calendar"
  desc "Google Calendar client"
  homepage "https://horacal.app/"

  livecheck do
    url "https://downloads.horacal.app/direct/stable/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "hora Calendar.app"

  zap trash: [
    "~/Library/Application Scripts/CKWYP7CT7C.szamowski.Hora-direct",
    "~/Library/Application Scripts/szamowski.Hora-direct",
    "~/Library/Application Scripts/szamowski.Hora-direct.HoraWidgets",
    "~/Library/Application Support/szamowski.Hora-direct",
    "~/Library/Application Support/szamowski.Hora-direct.revenuecat",
    "~/Library/Caches/szamowski.Hora-direct",
    "~/Library/Containers/szamowski.Hora-direct",
    "~/Library/Containers/szamowski.Hora-direct.HoraWidgets",
    "~/Library/Group Containers/CKWYP7CT7C.szamowski.Hora-direct",
    "~/Library/HTTPStorages/szamowski.Hora-direct",
    "~/Library/Preferences/szamowski.Hora-direct.plist",
  ]
end
