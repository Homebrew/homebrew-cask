cask "sqlexplorer" do
  version "3.6.1"
  sha256 "57b40bf7f06d8ea125126de9c370bbd0415f5d9c68ce5200765e146acac0b05e"

  url "https://downloads.sourceforge.net/eclipsesql/SQL%20Explorer%20RCP%20%28exc%20JRE%29/#{version}/sqlexplorer_rcp-#{version}.macosx.cocoa.x86.tgz"
  name "Eclipse SQL Explorer"
  desc "SQL Client for JDBC compliant databases"
  homepage "https://eclipsesql.sourceforge.net/"

  disable! date: "2024-07-17", because: "is 32-bit only"

  app "SQLExplorer/sqlexplorer.app"
end
