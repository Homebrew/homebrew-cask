cask "sqlitestudio" do
  version "3.3.0"
  sha256 "1de89c3b1a4cbce6637ec7996edb90450799a2ac0807eab4a438d742a706769a"

  url "https://github.com/pawelsalawa/sqlitestudio/releases/download/#{version}/SQLiteStudio-#{version}.dmg",
      verified: "github.com/pawelsalawa/sqlitestudio/releases/download/"
  appcast "https://github.com/pawelsalawa/sqlitestudio/releases.atom"
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
