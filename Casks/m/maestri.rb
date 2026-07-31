cask "maestri" do
  version "0.38.0"
  sha256 "8e161da8f1af9d457110617c85c175df30d7ce80da419fd64d46fc7e0b766c63"

  url "https://pub-84eb0b1f3fb3420bbe57a88de7443b71.r2.dev/downloads/Maestri-#{version}.zip",
      verified: "pub-84eb0b1f3fb3420bbe57a88de7443b71.r2.dev/downloads/"
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
