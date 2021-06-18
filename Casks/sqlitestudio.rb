cask "sqlitestudio" do
  version "3.3.3"
  sha256 "bad152dd791c2b97c55b4c14b503f6dd61eb5989518f392c8a2ebac473999876"

  url "https://github.com/pawelsalawa/sqlitestudio/releases/download/#{version}/SQLiteStudio-#{version}.dmg",
      verified: "github.com/pawelsalawa/sqlitestudio/releases/download/"
  name "SQLiteStudio"
  desc "Create, edit, browse SQLite databases"
  homepage "https://sqlitestudio.pl/"

  auto_updates true

  app "SQLiteStudio.app"

  zap trash: [
    "~/.config/sqlitestudio",
    "~/Library/Saved Application State/com.yourcompany.SQLiteStudio.savedState",
  ]
end
