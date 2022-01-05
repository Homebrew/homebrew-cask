cask "dbgate" do
  version "4.5.0"
  sha256 "7619c23b0363435fcf08f1d0dd11ed616eff3a8e03976085b8ae4eabdb34b5ea"

  url "https://github.com/dbgate/dbgate/releases/download/v#{version}/dbgate-#{version}-mac_x64.dmg", verified: "github.com/dbgate/dbgate/"
  name "dbgate"
  desc "Database manager for MySQL, PostgreSQL, SQL Server, MongoDB, SQLite and others"
  homepage "https://dbgate.org/"

  livecheck do
    url "https://github.com/dbgate/dbgate/"
    strategy :github_latest
  end

  depends_on arch: :x86_64

  app "dbgate.app"

  zap trash: [
    "~/dbgate-data",
    "~/Library/Application Support/dbgate",
    "~/Library/Saved Application State/org.dbgate.savedState",
    "~/Library/Preferences/org.dbgate.plist",
    "~/Library/Logs/dbgate",
  ]
end
