cask "dbgate" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.8.2"

  if Hardware::CPU.intel?
    sha256 "3642012fbf57a10535b384631adb4c2ced2dae89ef3ef3e34aed755896427a28"
  else
    sha256 "99fb96ca2aaf835e56cc4037ee2bed848dd9847cfbc44cdc77f1605305e9d785"
  end

  url "https://github.com/dbgate/dbgate/releases/download/v#{version}/dbgate-#{version}-mac_#{arch}.dmg",
      verified: "github.com/dbgate/dbgate/"
  name "DbGate"
  desc "Database manager for MySQL, PostgreSQL, SQL Server, MongoDB, SQLite and others"
  homepage "https://dbgate.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "dbgate.app"

  zap trash: [
    "~/dbgate-data",
    "~/Library/Application Support/dbgate",
    "~/Library/Logs/dbgate",
    "~/Library/Preferences/org.dbgate.plist",
    "~/Library/Saved Application State/org.dbgate.savedState",
  ]
end
