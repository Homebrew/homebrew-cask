cask "sqlitestudio" do
  version "3.4.17"
  sha256 "72dd8f8cd6f564fbdb07488d977afed5a125e08ea8d649a9756789ee21367ea4"

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
