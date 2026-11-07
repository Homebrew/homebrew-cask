cask "maestri" do
  version "0.59.5"
  sha256 "7d74945f5003f012097593129f24e761e019cf6358ccdc75cc4b846fceffdd33"

  url "https://pub-84eb0b1f3fb3420bbe57a88de7443b71.r2.dev/downloads/Maestri-#{version}.zip"
  name "Maestri"
  desc "Canvas for agent orchestration"
  homepage "https://www.themaestri.app/"

  livecheck do
    url "https://pub-84eb0b1f3fb3420bbe57a88de7443b71.r2.dev/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Maestri.app"

  zap trash: [
    "~/.maestri",
    "~/Library/Application Support/CrashReporter/Maestri_*.plist",
    "~/Library/Caches/com.evercraftlabs.Maestro",
    "~/Library/HTTPStorages/com.evercraftlabs.Maestro",
    "~/Library/Logs/DiagnosticReports/Maestri-*.ips",
    "~/Library/Preferences/com.evercraftlabs.Maestro.plist",
  ]
end
