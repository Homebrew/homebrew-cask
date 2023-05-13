cask "sqlitestudio" do
  version "3.4.4"
  sha256 "bd1bf5cd0e442b867ef9417e6c849d7b9f4d38f4305804c4b9d58d905092d8ef"

  url "https://github.com/pawelsalawa/sqlitestudio/releases/download/#{version}/SQLiteStudio-#{version}.dmg",
      verified: "github.com/pawelsalawa/sqlitestudio/releases/download/"
  name "SQLiteStudio"
  desc "Create, edit, browse SQLite databases"
  homepage "https://sqlitestudio.pl/"

  app "SQLiteStudio.app"

  zap trash: [
    "~/.config/sqlitestudio",
    "~/Library/Preferences/pl.com.salsoft.SQLiteStudio.plist",
    "~/Library/Preferences/SalSoft/SQLiteStudio/",
    "~/Library/Saved Application State/com.yourcompany.SQLiteStudio.savedState",
    "~/Library/Saved Application State/pl.com.salsoft.SQLiteStudio.savedState",
  ]
end
