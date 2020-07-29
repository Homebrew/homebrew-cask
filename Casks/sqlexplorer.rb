cask "sqlexplorer" do
  version "3.6.1"
  sha256 "57b40bf7f06d8ea125126de9c370bbd0415f5d9c68ce5200765e146acac0b05e"

  # downloads.sourceforge.net/eclipsesql/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/eclipsesql/SQL%20Explorer%20RCP%20%28exc%20JRE%29/#{version}/sqlexplorer_rcp-#{version}.macosx.cocoa.x86.tgz"
  appcast "https://sourceforge.net/projects/eclipsesql/rss"
  name "Eclipse SQL Explorer"
  homepage "https://eclipsesql.sourceforge.io/"

  app "SQLExplorer/sqlexplorer.app"
end
