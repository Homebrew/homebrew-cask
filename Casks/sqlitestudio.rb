cask "sqlitestudio" do
  version "3.3.1"
  sha256 "46f041bc707435794c30eea20f93c60e05e0de14e73c3a67808603754eccc9ee"

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
