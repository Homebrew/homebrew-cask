cask "dbgate" do
  version "7.0.0"
  sha256 "add64ed566f17cefc5c023b318be8b0fd0262bfa723a8aeb1413a14f0acd1528"

  url "https://github.com/dbgate/dbgate/releases/download/v#{version}/dbgate-#{version}-mac_universal.dmg",
      verified: "github.com/dbgate/dbgate/"
  name "DbGate"
  desc "Database manager for MySQL, PostgreSQL, SQL Server, MongoDB, SQLite and others"
  homepage "https://dbgate.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "DbGate.app"

  zap trash: [
    "~/dbgate-data",
    "~/Library/Application Support/dbgate",
    "~/Library/Logs/dbgate",
    "~/Library/Preferences/org.dbgate.plist",
    "~/Library/Saved Application State/org.dbgate.savedState",
  ]
end
