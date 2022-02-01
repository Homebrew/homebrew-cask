cask "dbgate" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.6.1"

  if Hardware::CPU.intel?
    sha256 "1b1a6b4e08831d77fe41d93dcc4a5ce7c74fccef5eaf1e09d4a0a2df5264264d"
  else
    sha256 "a844d3294cbe25b2881437140a2343a219c447bd9ad9037deabb947f91df5753"
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
