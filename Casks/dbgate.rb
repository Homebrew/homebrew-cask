cask "dbgate" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.7.0"

  if Hardware::CPU.intel?
    sha256 "7ded8ae653c2be1a6fa1c9e0028114e84141c4e938c39c4c4ad5bef748293abb"
  else
    sha256 "06763d0e4d5796bf0aa1401a325a7f0894ce8da7ceef7a395802866abe4194a8"
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
