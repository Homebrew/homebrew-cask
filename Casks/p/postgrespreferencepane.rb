cask "postgrespreferencepane" do
  version "2.7"
  sha256 "970510169d0e37fb3feca6fa700d26fa2421aabcd19fc17db58eb0dca89ebb14"

  url "https://github.com/MaccaTech/PostgresPrefs/releases/download/v#{version}/PostgresPrefs-v#{version}.dmg"
  name "PostgresPrefs"
  desc "Preference Pane for controlling PostgreSQL database servers"
  homepage "https://github.com/MaccaTech/PostgresPrefs"

  prefpane "PostgreSQL.prefPane"

  zap trash: [
    "~/Library/LaunchAgents/org.postgresql.preferences.*.plist",
    "~/Library/Logs/PostgreSQL",
    "~/Library/Preferences/org.postgresql.preferences.servers.plist",
  ]
end
