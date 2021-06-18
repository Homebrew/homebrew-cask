cask "postgrespreferencepane" do
  version "2.6"
  sha256 "c04f7d3e2563454292a806c4d67d661e560c61c29fe45b196324e071e60130a9"

  url "https://github.com/MaccaTech/PostgresPrefs/releases/download/v#{version}/PostgresPrefs-v#{version}.dmg"
  name "PostgresPrefs"
  homepage "https://github.com/MaccaTech/PostgresPrefs"

  prefpane "PostgreSQL.prefPane"
end
