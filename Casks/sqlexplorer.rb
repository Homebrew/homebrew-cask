cask "sqlexplorer" do
  version "3.6.1"
  sha256 "57b40bf7f06d8ea125126de9c370bbd0415f5d9c68ce5200765e146acac0b05e"

  url "https://downloads.sourceforge.net/eclipsesql/SQL%20Explorer%20RCP%20%28exc%20JRE%29/#{version}/sqlexplorer_rcp-#{version}.macosx.cocoa.x86.tgz",
      verified: "downloads.sourceforge.net/eclipsesql/"
  name "Eclipse SQL Explorer"
  desc "SQL Client for JDBC compliant databases"
  homepage "https://eclipsesql.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/eclipsesql/rss"
    strategy :page_match
    regex(/.*?rcp[._-](\d+(?:\.\d+)+).macosx.*?\.tgz/i)
  end

  app "SQLExplorer/sqlexplorer.app"
end
