cask "sql-tabs" do
  version "1.1.0"
  sha256 "692b0c27a596d049dd64e158a543b768f7d4bd9df869b4365c9d8efc36b59b8e"

  url "https://github.com/sasha-alias/sqltabs/releases/download/v#{version}/SQL-Tabs-#{version}.dmg",
      verified: "github.com/sasha-alias/sqltabs/"
  name "SQL Tabs"
  homepage "https://www.sqltabs.com/"

  app "SQL Tabs.app"

  zap trash: "~/.sqltabs"
end
