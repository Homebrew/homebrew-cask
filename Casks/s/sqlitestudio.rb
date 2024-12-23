cask "sqlitestudio" do
  version "3.4.12"
  sha256 "fcf0a85c6d5e27cd403db9f7c73ce9d6f02e7e88a9351a04b9a834222e1289ae"

  url "https://github.com/pawelsalawa/sqlitestudio/releases/download/#{version}/sqlitestudio-#{version}.dmg",
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

  caveats do
    requires_rosetta
  end
end
