cask "hora-calendar" do
  version "3.0.1,645"
  sha256 "28eff24aedb68c66d92849ee512f942ead63e799ed88aa650669a54f44969cc9"

  url "https://downloads.horacal.app/direct/stable/releases/#{version.csv.first}/#{version.csv.second}/hora-calendar-#{version.csv.first}-#{version.csv.second}.zip"
  name "hora Calendar"
  desc "Google Calendar client with tasks and focus planning"
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
