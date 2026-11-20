cask "auto-tune-central" do
  version "2.1.1,8020"
  sha256 "fefeb1575a812e89eaa2914dd74c59494ca306a6677009cc7e85eb03993e4dfe"

  url "https://antares.sfo2.cdn.digitaloceanspaces.com/auto-tune-central/auto-update/mac/Auto_Tune_Central_#{version.csv.first}_universal_x#{version.csv.second}.dmg"
  name "Auto-Tune Central"
  desc "Software download manager for Antares products"
  homepage "https://www.antarestech.com/"

  livecheck do
    url "https://antares.sfo2.digitaloceanspaces.com/auto-tune-central/auto-update/mac/latest-mac.yml"
    regex(/Auto_Tune_Central_(\d+(?:\.\d+)+)_universal_x(\d+)\.dmg/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  depends_on :macos

  app "Auto-Tune Central.app"

  zap trash: [
    "~/Library/Application Support/Auto-Tune Central",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.antares.autotunecentral.sfl*",
    "~/Library/Application Support/CrashReporter/Auto-Tune Central_*.plist",
    "~/Library/Caches/com.Antares.AutoTuneCentral*",
    "~/Library/HTTPStorages/com.Antares.AutoTuneCentral",
    "~/Library/Logs/Auto-Tune Central",
    "~/Library/Preferences/ByHost/com.Antares.AutoTuneCentral.ShipIt.*.plist",
    "~/Library/Preferences/com.Antares.AutoTuneCentral.plist",
  ]
end
