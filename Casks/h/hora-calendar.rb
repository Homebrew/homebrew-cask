cask "hora-calendar" do
  version "3.0.5,667"
  sha256 "b232f066f5f6bf543be79e016e0ef99faf72fbaead91ea01755aa7591e4e8bba"

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
