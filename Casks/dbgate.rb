cask "dbgate" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.7.3"

  if Hardware::CPU.intel?
    sha256 "aa3328c47b4caa6e99a52d4b2be9fcaa7d788cf1333cfaddb98e69b7c134a6d0"
  else
    sha256 "2d77746bedfe999e2187b7cae4be6a6fb506b0ffb2694900be915934f79d4293"
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
