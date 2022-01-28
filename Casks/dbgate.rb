cask "dbgate" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.6.0"

  if Hardware::CPU.intel?
    sha256 "21b6f9430f06bf31bc16241e210fe9ac52e25a6828445bedf18ecdd3304a5adf"
  else
    sha256 "bb7426f1063a2bb756becad5a9bb35c01504fa1f1f944b782293f112e42c7dd6"
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
