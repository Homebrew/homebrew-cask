cask "auto-tune-central" do
  version "2.0.2"
  sha256 "c2c6096172832c96b71d240240ce85855ee7a6ed3e20a643ce439b2158e6ceba"

  url "https://antares.sfo2.cdn.digitaloceanspaces.com/auto-tune-central/auto-update/mac/Auto_Tune_Central_#{version}_universal_x7555.dmg"
  name "Auto-Tune Central"
  desc "Software download manager for Antares products"
  homepage "https://www.antarestech.com/"

  livecheck do
    url "https://antares.sfo2.digitaloceanspaces.com/auto-tune-central/auto-update/mac/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "Auto-Tune Central.app"

  zap trash: [
    "~/Library/Application Support/Auto-Tune Central",
    "~/Library/Application Support/CrashReporter/Auto-Tune Central_*.plist",
    "~/Library/Caches/com.Antares.AutoTuneCentral*",
    "~/Library/HTTPStorages/com.Antares.AutoTuneCentral",
    "~/Library/Logs/Auto-Tune Central",
    "~/Library/Preferences/ByHost/com.Antares.AutoTuneCentral.ShipIt.*.plist",
    "~/Library/Preferences/com.Antares.AutoTuneCentral.plist",
  ]
end
