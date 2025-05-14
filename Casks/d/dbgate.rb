cask "dbgate" do
  version "6.4.2"
  sha256 "c960dc217ac3f39aabfb3c79b1bb5c8b5630fc2ea05235bb34d8dfbbfb0295ab"

  url "https://github.com/dbgate/dbgate/releases/download/v#{version}/dbgate-#{version}-mac_universal.dmg",
      verified: "github.com/dbgate/dbgate/"
  name "DbGate"
  desc "Database manager for MySQL, PostgreSQL, SQL Server, MongoDB, SQLite and others"
  homepage "https://dbgate.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "DbGate.app"

  zap trash: [
    "~/dbgate-data",
    "~/Library/Application Support/dbgate",
    "~/Library/Logs/dbgate",
    "~/Library/Preferences/org.dbgate.plist",
    "~/Library/Saved Application State/org.dbgate.savedState",
  ]
end
