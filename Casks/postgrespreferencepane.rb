cask "postgrespreferencepane" do
  version "2.6"
  sha256 "fb3f618321efec12cbad21ec2d77e6a024a35f7a17bb304b421970f85e38337f"

  url "https://github.com/MaccaTech/PostgresPrefs/releases/download/v#{version}/PostgresPrefs-v#{version}.dmg"
  appcast "https://github.com/MaccaTech/PostgresPrefs/releases.atom"
  name "PostgresPrefs"
  homepage "https://github.com/MaccaTech/PostgresPrefs"

  prefpane "PostgreSQL.prefPane"
end
