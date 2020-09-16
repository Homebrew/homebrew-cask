cask "sqlitestudio" do
  version "3.2.1"
  sha256 "b66ce10747ca734c7f0dacf19fc773936756db1ab5441ec29b9b5ba23308844c"

  # github.com/pawelsalawa/sqlitestudio/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/pawelsalawa/sqlitestudio/releases/download/#{version}/SQLiteStudio-#{version}.dmg"
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
