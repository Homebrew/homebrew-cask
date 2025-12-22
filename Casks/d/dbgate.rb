cask "dbgate" do
  version "6.8.1"
  sha256 "9444e2ba19f6b2b3dbbdb84bc1504846de1be89011dfe6b5a03d7e1b3a410f97"

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
