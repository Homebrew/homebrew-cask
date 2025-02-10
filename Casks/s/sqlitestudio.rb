cask "sqlitestudio" do
  version "3.4.16"
  sha256 "879f6e3a6cfa76bce2d65348870b686fec6162a7bb22619ebd7a28670dc6df07"

  url "https://github.com/pawelsalawa/sqlitestudio/releases/download/#{version}/sqlitestudio-#{version}-macos-x64.dmg",
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
