cask "dbgate" do
  version "6.6.12"
  sha256 "316074c290778087e43212c43ad6003d50e59f5ac7518a0e7ae7dd76cde9e374"

  url "https://github.com/dbgate/dbgate/releases/download/v#{version}/dbgate-#{version}-mac_universal.dmg",
      verified: "github.com/dbgate/dbgate/"
  name "DbGate"
  desc "Database manager for MySQL, PostgreSQL, SQL Server, MongoDB, SQLite and others"
  homepage "https://dbgate.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "DbGate.app"

  zap trash: [
    "~/dbgate-data",
    "~/Library/Application Support/dbgate",
    "~/Library/Logs/dbgate",
    "~/Library/Preferences/org.dbgate.plist",
    "~/Library/Saved Application State/org.dbgate.savedState",
  ]
end
