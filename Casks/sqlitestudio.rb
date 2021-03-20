cask "sqlitestudio" do
  version "3.3.2"
  sha256 "8b0604a0a07b3941d8bfe4fd8e1154b5e0c4aa307a9dcd98b2c341eb9310fccf"

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
