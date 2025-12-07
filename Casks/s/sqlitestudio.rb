cask "sqlitestudio" do
  version "3.4.18"
  sha256 "ff827dd7fbc54e52de53893a9185f3abcb130205a498342f2cdf683c48e67b57"

  url "https://github.com/pawelsalawa/sqlitestudio/releases/download/#{version}/sqlitestudio-#{version}-macos-x64.dmg",
      verified: "github.com/pawelsalawa/sqlitestudio/releases/download/"
  name "SQLiteStudio"
  desc "Create, edit, browse SQLite databases"
  homepage "https://sqlitestudio.pl/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "SQLiteStudio.app"

  zap trash: [
    "~/.config/sqlitestudio",
    "~/Library/Preferences/pl.com.salsoft.SQLiteStudio.plist",
    "~/Library/Preferences/SalSoft/SQLiteStudio",
    "~/Library/Saved Application State/com.yourcompany.SQLiteStudio.savedState",
    "~/Library/Saved Application State/pl.com.salsoft.SQLiteStudio.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
